# Status

Last successful check: 2026-09-16

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.135321s  {"status":"degraded","uptime_seconds":1828.7,"redis_available":false,"cache_backend":"in_p
feature-store-api                     200 18.659437s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-16T21:45:11.
search-ranking-api                    503 8.935567s  Service Unavailable
multimodal-rag-backend                200 169.156747s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
llm-eval-backend                      200 41.669052s  {"status":"ok","db":"ok","model":"lazy"}
```
