# Status

Last successful check: 2026-09-06

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.085022s  {"status":"ok","uptime_seconds":164137.8,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 16.721226s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 5.099419s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-06T22:25:42.
search-ranking-api                    503 4.304677s  Service Unavailable
multimodal-rag-backend                200 94.264980s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
llm-eval-backend                      200 47.073710s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.360904s  {"status":"ok","model_available":true}
```
