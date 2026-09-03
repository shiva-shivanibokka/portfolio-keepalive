# Status

Last successful check: 2026-09-03

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.121985s  {"status":"ok","uptime_seconds":175892.0,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 24.464364s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.886592s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-03T18:08:13.
search-ranking-api                    503 135.648147s  Service Unavailable
multimodal-rag-backend                200 110.287415s  {"status":"ok"}
nlp-pipeline-api                      200 69.558101s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 11.410001s  {"status":"ok"}
llm-eval-backend                      200 50.642111s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 17.876907s  {"status":"ok","model_available":true}
```
