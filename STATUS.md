# Status

Last successful check: 2026-09-03

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.094176s  {"status":"ok","uptime_seconds":149501.0,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 24.267843s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 15.862053s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-03T10:48:24.
search-ranking-api                    429 10.089347s  Rate exceeded.
multimodal-rag-backend                200 113.734081s  {"status":"ok"}
nlp-pipeline-api                      200 68.106600s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 10.267169s  {"status":"ok"}
llm-eval-backend                      200 50.228368s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 17.421441s  {"status":"ok","model_available":true}
```
