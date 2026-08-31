# Status

Last successful check: 2026-08-31

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.169467s  {"status":"degraded","uptime_seconds":1591.0,"redis_available":false,"cache_backend":"in_p
pcb-defect-detector                   200 20.140676s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.433367s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-08-31T07:43:54.
search-ranking-api                    200 110.250365s  {"status":"ok","engine_ready":true,"device":"cpu","index_size":1000000,"cross_encoder":tru
multimodal-rag-backend                200 110.900435s  {"status":"ok"}
nlp-pipeline-api                      200 65.751650s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 11.241082s  {"status":"ok"}
llm-eval-backend                      200 48.923319s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.012540s  {"status":"ok","model_available":true}
```
