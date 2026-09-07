# Status

Last successful check: 2026-09-07

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.127260s  {"status":"ok","uptime_seconds":239705.5,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 20.771401s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.931011s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-07T19:25:23.
search-ranking-api                    503 3.373775s  Service Unavailable
multimodal-rag-backend                200 99.091291s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
llm-eval-backend                      200 49.506170s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.762152s  {"status":"ok","model_available":true}
```
