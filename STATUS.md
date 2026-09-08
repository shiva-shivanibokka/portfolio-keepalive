# Status

Last successful check: 2026-09-08

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.114672s  {"status":"ok","uptime_seconds":73040.0,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 18.917783s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 16.264349s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-08T17:47:40.
search-ranking-api                    503 3.611245s  Service Unavailable
multimodal-rag-backend                200 91.736291s  {"status":"ok"}
nlp-pipeline-api                      200 175.711788s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 47.946462s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 15.647304s  {"status":"ok","model_available":true}
```
