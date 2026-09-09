# Status

Last successful check: 2026-09-09

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.117901s  {"status":"ok","uptime_seconds":16160.2,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 18.413535s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.905988s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-09T10:00:43.
search-ranking-api                    503 6.332754s  Service Unavailable
multimodal-rag-backend                200 102.284571s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
llm-eval-backend                      200 49.217830s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 11.688259s  {"status":"ok","model_available":true}
```
