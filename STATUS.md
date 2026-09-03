# Status

Last successful check: 2026-09-03

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.098826s  {"status":"ok","uptime_seconds":194332.6,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 21.094841s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 17.058180s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-03T23:15:34.
search-ranking-api                    503 5.927198s  Service Unavailable
multimodal-rag-backend                503 95.925404s  Service Unavailable
nlp-pipeline-api                      000  timeouts  Service Unavailable
competitor-intelligence-engine        200 9.641505s  {"status":"ok"}
llm-eval-backend                      200 49.622607s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.607704s  {"status":"ok","model_available":true}
```
