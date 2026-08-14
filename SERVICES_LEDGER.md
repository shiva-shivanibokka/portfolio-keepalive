# Hosting services ledger

**Read this before choosing or provisioning any hosted backend for these
projects.** It exists because the same failure keeps recurring: a free trial
lapses, the service is deleted, and a portfolio demo a recruiter might click
goes dead without a single notification.

Last updated: 13 August 2026.

---

## Burned — do not reach for these again

| Service | Used by | What happened |
|---|---|---|
| **Fly.io** | Tisch-ML-Model, Sepsis-ML-Model | Trial ended ~July 2025 and suspended every app on the account at once. Symptom is deceptive: the hostname still resolves and still accepts TCP, but the TLS handshake fails, so it reads as a network fault rather than a billing one. Not fixable without adding a card. Both projects migrated to Vercel. |
| **MotherDuck** | ML-System-Design-Feature-Store (offline store) | Trial ended ~Aug 2026. Every DuckDB-backed endpoint returned 500 while the Cloud Run process itself stayed healthy and kept serving `/docs`, which made it look like an application bug. Replaced with a DuckDB file baked into the container image. |
| **Aiven — *trial*** | — | The original 30-day trial lapsed. Superseded: the same service now runs on Aiven's permanent free tier. See below — recovered, not lost. |
| **Redis Cloud (redis.io)** | — | Evaluated Aug 2026 as a replacement. Their free tier is no longer available at signup. Do not spend time on it again. |
| **Hugging Face Spaces — *new Docker/Gradio Spaces*** | Computer-Vision-MLOps-Pipeline (attempted 13 Aug 2026) | `create_repo(space_sdk="docker")` now returns **402 Payment Required**: *"Static Spaces are free for everyone, but hosting Gradio and Docker Spaces on free cpu-basic requires a PRO subscription."* The six Spaces already on the `shiva-1993` account still run on `cpu-basic` and are unaffected — they predate the change. **Existing Spaces are grandfathered; new ones are not.** Checking the account's current Spaces tells you nothing about whether a new one can be created — only attempting `create_repo` does. Static Spaces (no server process) remain free. |

## Surveyed 14 Aug 2026 — where the Cloud Run services could go

Prompted by the trial ending ~19 Sept. **Every viable option requires a card.**
There is no card-free host that will run a 1-2 GB torch container.

| Option | Free? | Verdict |
|---|---|---|
| **Google Cloud Run, upgraded account** | **Always Free never expires**: 180k vCPU-s, 360k GiB-s, 2M requests/month. Measured usage is ~1-4% of that. | **$0/month, zero migration.** Upgrading keeps the remaining $131 credit *and* grants Always Free. Card required but not charged. |
| **Oracle Cloud Always Free** | 2 OCPU / 12 GB ARM, no expiry. Card required for identity ($1 hold, refunded). | Real fallback, real work: images must be rebuilt for **arm64**, you self-manage Docker/TLS/nginx, one region only, and A1 capacity is a lottery. **Oracle silently halved this from 4 OCPU/24 GB on 15 June 2026 with no announcement** — the same free-tier rug-pull this ledger exists to record. |
| **Render** | Free web service, **512 MB RAM** | Too small. Torch alone needs more. |
| **Koyeb** | Free Starter tier **closed to new users** after the Mistral acquisition, Feb 2026 | Not available. |
| **Fly.io** | No free tier for new accounts | Already burned; now formally gone. |
| **Railway** | $5 one-time credit, not a free tier | Will not carry 9 services. |

**The conclusion that matters:** avoiding a card is not achievable, so it should
not drive the decision. The real choice is between $0 on an upgraded GCP account
with no migration, and $0 on Oracle with a full arm64 rebuild and self-managed
infrastructure. The GCP free tier is also the larger of the two relative to
actual usage.

## Constrained — usable, but the limit bites

| Service | Limit | Status |
|---|---|---|
| **Upstash** | Free plan allows **one database per account** | Taken by ML-System-Design-Recommendation-Engine (keys `rec:*`). Sharing it with a second project is safe if key prefixes are disjoint — verified for the feature store (`entity:user:*`), and neither project issues `FLUSHDB` or an unscoped `KEYS`. Treat as the fallback when a dedicated instance is not available. |
| **Aiven — *free tier*** | **One service per organization**, 1 GB Valkey, no card, no expiry | **In use** — `valkey-150915c3-mlfeature`, the online store for ML-System-Design-Feature-Store. The one-service limit means no other project can have an Aiven service without displacing it. Aiven powers off free services with no continuative activity, so the daily materialization cron is what keeps it up. |
| **Supabase** | Free projects **pause after ~7 days idle**, then are **deleted at 90 days** | Used by Churn-Intelligence-Platform. Survived by resuming rather than rebuilding. A paused project is indistinguishable from a deleted one from outside — `NXDOMAIN` plus the pooler reporting an unknown tenant — so **check the Supabase dashboard before concluding data is lost**. A daily keepalive cron is now in place. |

## Working, in use

| Service | Used by |
|---|---|
| **Vercel** (Hobby) | Tisch, Sepsis, Churn dashboard, Feature Store frontend |
| **Google Cloud Run** | ML-System-Design-Feature-Store API — never went down; only its data backends did. Also ML-System-Design-Model-Serving (`model-serving`, us-central1) and Computer-Vision-MLOps-Pipeline (`pcb-defect-detector`, us-central1, 2 vCPU / 2 GiB, `--max-instances 1` because the prediction log is in-container SQLite) — both with **zero attached services**, so there is nothing on them that can expire. **All 8 services die when the free trial lapses (~19 Sept 2026)** unless migrated — the user has chosen migration over upgrading. |
| **Google Cloud Scheduler** | `model-serving-keepalive` (us-central1, `*/5 * * * *` → `GET /health`), added 13 Aug 2026. Holds one Cloud Run instance warm so a visitor never waits out a 40s model load. **Free**, and not by accident: Cloud Run bills request-processing time unless CPU-always-allocated is set, so an instance that is alive but idle costs nothing — the ping buys warmth for the price of a 5 ms request. Free tier is 3 jobs per billing account; this is job 1 of 3. Do **not** set `--min-instances 1` instead: that switches on instance-lifetime billing, roughly $35-40/month at 2 vCPU / 4 GiB. |
| **Aiven Valkey** (free tier) | ML-System-Design-Feature-Store online store — kept alive by the daily materialization cron |
| **Supabase** | Churn-Intelligence-Platform (+ keepalive cron) |
| **Upstash** | ML-System-Design-Recommendation-Engine |
| **Groq** | Churn agent |
| **GitHub Actions** | Scheduled materialization and health checks. Also **`portfolio-keepalive`** (public repo, `*/10 * * * *`) which warms all 9 Cloud Run services and fails the run if any misses 200. Used instead of Cloud Scheduler because that free tier is **3 jobs per billing account** and one is already spent on model-serving. Actions cron is free and unlimited on public repos. |
| **Cloud Billing budget** | `portfolio-guard` on billing account `01CFCA-7E5513-C4AEC7` — **$1**, emails at 50% and 100%. Added 13 Aug 2026 after a single service with `minScale: 1` + `cpu-throttling: false` burned 1.2M billable instance-seconds in 12 days with no alert anywhere. There was no budget on the account before. |

---

## Rules learned the expensive way

1. **Prefer no external service at all.** Data small enough to travel with the
   artifact should. Sepsis ships an XGBoost `.ubj`, the feature store ships a
   2 MB DuckDB file. Nothing to expire, no account, no network hop. This has
   been the single most effective fix.

2. **A trial is not a free tier.** They are separate products from the same
   vendor and the words are used interchangeably in marketing. Confirm which one
   is being signed up for, and that no card is required.

3. **Anything that sleeps on inactivity needs a scheduled ping.** Supabase
   pauses at 7 days and deletes at 90; Aiven powers off free services with no
   continuative activity. A portfolio demo clicked once a month never clears
   that bar on its own.

4. **Verify the keepalive actually fires.** An unverified one is
   indistinguishable from none. Make the endpoint report *why* it failed —
   distinguish "not configured" from "wrong credential" — or there is no probe
   that can tell a working guard from a broken one.

5. **A dead backend must not render as an empty product.** The churn dashboard
   wrapped every query in `.catch(() => [])`, so an unreachable database looked
   exactly like zero rows and the page announced "~0 customers" with total
   confidence. Reads may degrade; they may not lie.

6. **Reads degrade, writes fail loudly.** An outage on a read path should fall
   back to a slower source. A write that silently no-ops is worse than a crash —
   the churn agent discarded every retention plan for six weeks while returning
   HTTP 200.

7. **Check the provider's dashboard before concluding data is lost.** DNS and
   connection errors cannot distinguish paused from deleted.

8. **Power on before deleting.** The Aiven Valkey service looked destroyed from
   outside — `NXDOMAIN`, and the plan slot appeared occupied by a corpse. The
   console only offered "power on", and that restored it with **the same
   hostname and credentials**, so the `REDIS_URL` already in `.env` still
   worked and nothing had to be reissued. Deleting it, as originally planned,
   would have thrown away working credentials for no reason.

9. **A healthy process is not a healthy service.** Cloud Run kept serving
   `/docs` and returning 200 on it for weeks while every data endpoint returned
   500, because the failure was in backends it depended on. An uptime check
   pointed at the wrong path reports green through an outage like this — check
   an endpoint that actually touches the data.

10. **An in-process fallback often beats a hosted one.** Model-Serving needed a
    prediction cache. Upstash was available as the sanctioned fallback, but the
    service runs a single instance, and one instance means one cache — so a
    dict with a TTL is not an approximation of Redis there, it *is* Redis
    without the network hop, the account, or the quota. Rule 1 applied to a
    dependency rather than to data. The condition that makes this safe is
    single-instance; check it before reaching for it. Report which backend
    answered (`cache_backend` on `/health`) so the substitution is never
    silent, and keep `redis_available` reporting Redis specifically — a
    fallback that inherits the name of the thing it replaced hides real
    outages.

11. **Empty config means absent, not broken.** Model-Serving inherited
    `REDIS_HOST: redis` and `POSTGRES_HOST: postgres` from docker-compose. On
    Cloud Run neither hostname exists, and the connect attempts spent **10.4
    seconds of every cold start** failing to resolve them — most of the startup
    budget, to learn something already known. Setting them empty and treating
    empty as "not configured here" took lifespan startup from 19.3s to 2ms.
    Config that describes a different environment is not harmless.

12. **Cold starts are a demo-killer, and scale-to-zero causes them.** Measured
    14 Aug 2026 across the 9 Cloud Run services: `search-ranking-api` took
    **122s** to answer a cold request, `multimodal-rag-backend` 94s,
    `nlp-pipeline-api` 66s, `llm-eval-backend` 53s. Only `model-serving`, which
    already had a keepalive, answered instantly (0.3s). Nobody clicking a
    portfolio link waits two minutes — they conclude it is broken, which is
    worse than an obvious outage. Warming is free (rule 13 below explains why),
    so there is no reason not to. See `portfolio-keepalive`.

13. **A keepalive can report success while doing nothing.** The first run of
    `portfolio-keepalive` went green having pinged nothing at all. Two faults
    combined: the script was not executable on the runner (the mode bit does
    not survive a commit from Windows — invoke it as `bash script.sh`), and
    `./script.sh | tee out` takes its exit status from `tee`, so the failure
    was invisible without `set -o pipefail`. A separate assertion now checks
    the output file is non-empty and contains a table. This is rule 4 again:
    an unverified guard is indistinguishable from no guard.

14. **Windows line endings will break a Linux runner in a way that looks like
    an outage.** A Python `write_text()` rewrote a URL list with CRLF, curl
    rejected every URL for the trailing CR, and the report showed all nine
    services down simultaneously. If a check says *everything* failed at once,
    suspect the checker before the services. `.gitattributes` with
    `* text=auto eol=lf` prevents it.

15. **An unpinned linter is a timer on a red build.** `pip install ruff` in CI
    installs whatever shipped most recently, so the result depends on *when* CI
    runs rather than what was committed. LLM-Halucination-Detection went red on
    a README-only commit: ruff 0.5.5 reported "All checks passed" locally on the
    identical tree that CI failed with 33 errors. It had been broken since
    whichever release added those rules — nobody had pushed since 12 July, so
    nobody saw it. **Pin the linter version.** And when the new rules fire, read
    them: 27 were mechanical, but three flagged deliberate boundary catches (a
    health probe, a DB insert mapped to 409, an external call mapped to 502)
    where rewriting the code to satisfy the linter would have made it worse —
    those get a `noqa` with the reason, not a refactor.

16. **Never let Python write a file a shell will read without `newline="
"`.**
    `pathlib.write_text()` and `open(...,"w")` translate `
` to `
` on
    Windows. It happened three times in one session: a URL list where curl
    rejected all nine URLs and it presented as every service being down at once,
    and a deletion manifest where all 41 refs silently failed. The symptom never
    looks like an encoding problem. `.gitattributes` with `* text=auto eol=lf`
    covers the repository; the explicit `newline` argument covers everything else.

17. **`Path(__file__).parents[N]` is a bug waiting for a container.** The PCB
    detector's first Cloud Run revision came up and returned 500 on every
    endpoint that read config: `FileNotFoundError:
    '/usr/local/lib/python3.11/params.yaml'`. `REPO_ROOT` walked up from
    `__file__`, which is correct in a source checkout and wrong the moment
    `pip install .` puts the package in site-packages — the data files are in
    `/app`, the interpreter's lib directory is not. Nothing local can catch
    this, because in a checkout the wrong answer and the right answer are the
    same directory. Resolve a root by **searching for a file you know is there**
    (`params.yaml`), honour an explicit env override, and set that override in
    the Dockerfile. Also: `/health` still returned 200 through it — the process
    was fine, the model just never loaded — which is rule 9 again.

18. **On Cloud Run, a background warm-up thread barely runs.** Rule 19 below is
    right about *lifespan*, but the obvious follow-through — load on a thread
    and return 503 until ready — fails on Cloud Run with default CPU
    throttling, because **the container is only given CPU while a request is in
    flight**. The PCB detector sat on `"status": "loading"` indefinitely: the
    panel polled every 3s, each poll returned 503 in ~50ms, so the loader
    received ~50ms of CPU per poll and never converged. The fix is to let the
    request that *needs* the model block on it — an open request is what buys
    CPU — so a ~15s load completes inside one call, well under the 300s request
    timeout. Keep `/health` non-blocking so liveness probes never wait. The
    inverse trade-off from rule 14 applies: block the endpoint, not startup.

19. **Never block startup on model loading.** Uvicorn binds the socket only
    *after* lifespan startup returns, so loading two transformers inside it
    means a scale-to-zero service is an unreachable port for the whole load —
    indistinguishable from dead. Load on a background thread instead and let
    the readiness probe do its job: `/health` answers in 0.2s reporting
    `models_stage`, `/ready` returns 503 with the current stage and elapsed
    seconds, and the UI shows progress rather than an error. Verified live:
    stages `loading_v1 → warming_v1 → loading_v2 → warming_v2 → ready` in 72s,
    with the page interactive throughout.
