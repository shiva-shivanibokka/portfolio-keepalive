# Status

Last successful check: 2026-09-07

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.082086s  {"status":"ok","uptime_seconds":170546.6,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 19.447768s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.459483s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-07T00:12:43.
search-ranking-api                    503 4.506306s  Service Unavailable
multimodal-rag-backend                200 93.251148s  {"status":"ok"}
nlp-pipeline-api                      200 170.712758s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 46.620580s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.006256s  {"status":"ok","model_available":true}
```
