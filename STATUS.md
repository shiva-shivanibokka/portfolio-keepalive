# Status

Last successful check: 2026-09-05

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.091018s  {"status":"ok","uptime_seconds":65979.7,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 18.651848s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.032315s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-05T19:09:55.
search-ranking-api                    503 4.351054s  Service Unavailable
multimodal-rag-backend                200 99.502221s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
competitor-intelligence-engine        200 5.398492s  {"status":"ok"}
llm-eval-backend                      200 48.998397s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 10.299176s  {"status":"ok","model_available":true}
```
