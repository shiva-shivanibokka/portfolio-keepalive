# portfolio-keepalive

Two things live here: the keepalive that warms the Cloud Run demos, and
[`SERVICES_LEDGER.md`](SERVICES_LEDGER.md) — the record of which hosting
services have burned us and why. **Read the ledger before provisioning any
backend.** It was a loose file on a desktop until 14 Aug 2026, which was a bad
place for the only copy of seventeen rules learned the expensive way.

Keeps every Cloud Run service behind a public demo warm, and reports loudly when
one is not.

## Why this exists

Cloud Run scales to zero, which is what makes it free — but a cold service takes
time to answer, and measured on 14 Aug 2026 the worst of these took **two
minutes**:

| service | cold start |
|---|---|
| search-ranking-api | 122.2s |
| multimodal-rag-backend | 93.5s |
| nlp-pipeline-api | 65.5s |
| llm-eval-backend | 52.8s |
| feature-store-api | 15.0s |
| liver-hcc | 14.1s |
| pcb-defect-detector | 7.0s | *(removed 9 Sept 2026 — see below)* |
| model-serving | **0.3s** — already had a keepalive |

Nobody clicking a portfolio link waits two minutes. They conclude it is broken,
which is worse than it being obviously down.

## Why it is free

Cloud Run bills request-processing time unless CPU-always-allocated is set, so
an instance that is alive but idle costs nothing. The ping buys warmth for the
price of a few-millisecond request.

**Do not "fix" cold starts with `--min-instances 1`.** That switches on
instance-lifetime billing — roughly $35–40/month *per service*.

## Why GitHub Actions rather than Cloud Scheduler

Cloud Scheduler's free tier is 3 jobs per billing account, and one is already
used. Nine services need warming. Scheduled Actions are free and unlimited on
public repositories.

## It is also a health check

`ping.sh` exits non-zero if any service fails to return 200, so a broken demo
produces a failed workflow run and an email. A keepalive nobody checks is
indistinguishable from no keepalive at all.

`STATUS.md` records the last check. It carries only the date, so it is committed
at most once a day — which is deliberate: **GitHub disables scheduled workflows
in a repository with no activity for 60 days**, so a keepalive that never commits
eventually switches itself off, which is precisely the silent failure it exists
to prevent.

## Adding a service

One line in `services.txt`: `name<TAB>url`. Prefer a health endpoint that
actually touches the thing you want warm. `pcb-defect-detector` pinged
`/model/info` rather than `/health`, because its `/health` was deliberately
non-blocking and returned 200 while the model was still loading — warming the
container but leaving the model cold, which is a keepalive that reports success
having bought nothing.

## Removing a service

Two so far, and for the same reason: the demo stopped needing a backend at all.
`competitor-intelligence-engine` (6 Sept 2026) moved its API to a Vercel service
beside its own frontend; `pcb-defect-detector` (9 Sept 2026) moved inference into
the visitor's browser. Delete the line rather than leaving it — this workflow
fails the run when a ping misses 200, so a service nothing depends on any more
turns a useful alarm into a recurring false one, and an alarm people learn to
ignore is worse than no alarm.
