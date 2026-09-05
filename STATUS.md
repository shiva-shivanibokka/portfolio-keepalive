# Status

Last successful check: 2026-09-05

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.101053s  {"status":"ok","uptime_seconds":79732.7,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 17.118705s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 15.164557s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-05T22:59:08.
search-ranking-api                    503 3.518611s  Service Unavailable
multimodal-rag-backend                200 101.961164s  {"status":"ok"}
nlp-pipeline-api                      200 77.726998s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 13.111901s  {"status":"ok"}
llm-eval-backend                      200 49.212972s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.539493s  {"status":"ok","model_available":true}
```
