# Status

Last successful check: 2026-08-24

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.113373s  {"status":"ok","uptime_seconds":281505.3,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 8.436792s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.646162s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-08-24T21:29:43.
search-ranking-api                    503 89.621180s  Service Unavailable
multimodal-rag-backend                200 82.853957s  {"status":"ok"}
nlp-pipeline-api                      200 63.981530s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 4.064117s  {"status":"ok"}
llm-eval-backend                      200 35.515975s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 4.540824s  {"status":"ok","model_available":true}
```
