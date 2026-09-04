# Status

Last successful check: 2026-09-04

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.125271s  {"status":"ok","uptime_seconds":268742.7,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 22.407047s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 15.962794s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-04T19:55:44.
search-ranking-api                    503 4.346830s  Service Unavailable
multimodal-rag-backend                200 102.929396s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
competitor-intelligence-engine        200 12.487339s  {"status":"ok"}
llm-eval-backend                      200 50.919136s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 17.505543s  {"status":"ok","model_available":true}
```
