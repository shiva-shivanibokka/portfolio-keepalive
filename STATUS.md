# Status

Last successful check: 2026-09-07

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.106300s  {"status":"ok","uptime_seconds":2575.9,"redis_available":false,"cache_backend":"in_process
pcb-defect-detector                   200 19.989032s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 16.218579s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-07T22:13:17.
search-ranking-api                    503 3.357058s  Service Unavailable
multimodal-rag-backend                200 94.763353s  {"status":"ok"}
nlp-pipeline-api                      200 135.487833s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 47.435504s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.773020s  {"status":"ok","model_available":true}
```
