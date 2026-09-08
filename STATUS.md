# Status

Last successful check: 2026-09-08

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.101763s  {"status":"ok","uptime_seconds":91017.6,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 21.218614s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.652855s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-08T22:47:18.
search-ranking-api                    503 29.716894s  Service Unavailable
multimodal-rag-backend                200 102.338468s  {"status":"ok"}
nlp-pipeline-api                      200 161.351437s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 50.272728s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 15.624160s  {"status":"ok","model_available":true}
```
