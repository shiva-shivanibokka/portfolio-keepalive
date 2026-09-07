# Status

Last successful check: 2026-09-07

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.115144s  {"status":"ok","uptime_seconds":226465.0,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 16.574912s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.616685s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-07T15:44:39.
search-ranking-api                    503 4.369473s  Service Unavailable
multimodal-rag-backend                200 105.775543s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
llm-eval-backend                      200 48.504173s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.162460s  {"status":"ok","model_available":true}
```
