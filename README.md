# portfolio-keepalive

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
| competitor-intelligence-engine | 9.8s |
| pcb-defect-detector | 7.0s |
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
actually touches the thing you want warm — `pcb-defect-detector` pings
`/model/info` rather than `/health`, because its `/health` is deliberately
non-blocking and returns 200 while the model is still loading.
