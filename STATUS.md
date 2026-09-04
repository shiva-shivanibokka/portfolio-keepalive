# Status

Last successful check: 2026-09-04

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.106502s  {"status":"ok","uptime_seconds":249531.1,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 23.339409s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 16.810520s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-04T14:35:34.
search-ranking-api                    503 5.321189s  Service Unavailable
multimodal-rag-backend                200 112.076406s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
competitor-intelligence-engine        200 10.593102s  {"status":"ok"}
llm-eval-backend                      200 49.218605s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 17.049983s  {"status":"ok","model_available":true}
```
