# Status

Last successful check: 2026-09-09

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.091071s  {"status":"ok","uptime_seconds":32425.0,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 0.071821s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.468695s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-09T14:31:30.
search-ranking-api                    503 4.303105s  Service Unavailable
multimodal-rag-backend                200 99.335233s  {"status":"ok"}
nlp-pipeline-api                      200 237.213571s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 52.502194s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 15.788022s  {"status":"ok","model_available":true}
```
