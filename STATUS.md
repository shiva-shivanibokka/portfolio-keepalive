# Status

Last successful check: 2026-09-08

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.069227s  {"status":"ok","uptime_seconds":10753.6,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 17.133914s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.475064s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-08T00:29:29.
search-ranking-api                    503 3.309339s  Service Unavailable
multimodal-rag-backend                200 122.826578s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
llm-eval-backend                      200 49.081107s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.638057s  {"status":"ok","model_available":true}
```
