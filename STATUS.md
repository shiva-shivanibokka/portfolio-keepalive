# Status

Last successful check: 2026-09-04

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.095716s  {"status":"ok","uptime_seconds":218056.7,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 19.189350s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.795761s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-04T05:50:54.
search-ranking-api                    503 4.336177s  Service Unavailable
multimodal-rag-backend                200 91.744254s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
competitor-intelligence-engine        200 9.384180s  {"status":"ok"}
llm-eval-backend                      200 46.061379s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.078452s  {"status":"ok","model_available":true}
```
