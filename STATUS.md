# Status

Last successful check: 2026-09-07

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.074511s  {"status":"ok","uptime_seconds":187377.1,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 19.378583s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.789718s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-07T04:53:14.
search-ranking-api                    503 3.393418s  Service Unavailable
multimodal-rag-backend                200 95.216540s  {"status":"ok"}
nlp-pipeline-api                      200 138.847838s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 48.054288s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.247048s  {"status":"ok","model_available":true}
```
