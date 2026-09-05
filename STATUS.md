# Status

Last successful check: 2026-09-05

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.081228s  {"status":"ok","uptime_seconds":59417.7,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 20.064296s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.425769s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-05T17:20:35.
search-ranking-api                    503 4.298876s  Service Unavailable
multimodal-rag-backend                200 100.004794s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
competitor-intelligence-engine        200 9.819364s  {"status":"ok"}
llm-eval-backend                      200 50.517406s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.106979s  {"status":"ok","model_available":true}
```
