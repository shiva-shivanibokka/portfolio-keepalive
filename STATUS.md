# Status

Last successful check: 2026-09-04

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.099373s  {"status":"ok","uptime_seconds":276855.7,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 20.283205s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 15.824539s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-04T22:10:55.
search-ranking-api                    503 4.383302s  Service Unavailable
multimodal-rag-backend                200 109.559234s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
competitor-intelligence-engine        200 10.559697s  {"status":"ok"}
llm-eval-backend                      200 51.281878s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 15.006128s  {"status":"ok","model_available":true}
```
