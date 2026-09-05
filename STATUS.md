# Status

Last successful check: 2026-09-05

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.151583s  {"status":"ok","uptime_seconds":51537.0,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 18.076302s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.022243s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-05T15:09:12.
search-ranking-api                    503 4.358489s  Service Unavailable
multimodal-rag-backend                200 99.084390s  {"status":"ok"}
nlp-pipeline-api                      200 76.361063s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 10.402141s  {"status":"ok"}
llm-eval-backend                      200 47.812368s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.008693s  {"status":"ok","model_available":true}
```
