# Status

Last successful check: 2026-08-21

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.109160s  {"status":"degraded","uptime_seconds":1368.3,"redis_available":false,"cache_backend":"in_p
pcb-defect-detector                   200 7.334580s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.739638s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-08-21T15:40:46.
search-ranking-api                    200 175.032378s  {"status":"ok","engine_ready":true,"device":"cpu","index_size":1000000,"cross_encoder":tru
multimodal-rag-backend                200 97.023904s  {"status":"ok"}
nlp-pipeline-api                      200 63.020907s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 10.160743s  {"status":"ok"}
llm-eval-backend                      200 52.247976s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.656760s  {"status":"ok","model_available":true}
```
