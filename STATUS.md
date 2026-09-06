# Status

Last successful check: 2026-09-06

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.132746s  {"status":"ok","uptime_seconds":86341.9,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 17.812769s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 12.736025s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-06T00:49:15.
search-ranking-api                    503 4.342328s  Service Unavailable
multimodal-rag-backend                200 98.049932s  {"status":"ok"}
nlp-pipeline-api                      200 73.902196s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 8.663562s  {"status":"ok"}
llm-eval-backend                      200 48.778040s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 15.720924s  {"status":"ok","model_available":true}
```
