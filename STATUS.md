# Status

Last successful check: 2026-09-09

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.131559s  {"status":"ok","uptime_seconds":98020.7,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 18.029056s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 15.690841s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-09T00:44:00.
search-ranking-api                    503 5.597810s  Service Unavailable
multimodal-rag-backend                200 103.094376s  {"status":"ok"}
nlp-pipeline-api                      200 82.649737s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 48.958622s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.596884s  {"status":"ok","model_available":true}
```
