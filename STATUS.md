# Status

Last successful check: 2026-09-01

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.133869s  {"status":"ok","uptime_seconds":4278.0,"redis_available":false,"cache_backend":"in_process
pcb-defect-detector                   200 21.904999s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 16.953273s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-01T18:28:00.
search-ranking-api                    200 214.325784s  {"status":"ok","engine_ready":true,"device":"cpu","index_size":1000000,"cross_encoder":tru
multimodal-rag-backend                000  timeouts  {"status":"ok","engine_ready":true,"device":"cpu","index_size":1000000,"cross_encoder":tru
nlp-pipeline-api                      200 150.251460s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 21.119590s  {"status":"ok"}
llm-eval-backend                      200 48.890958s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 17.861074s  {"status":"ok","model_available":true}
```
