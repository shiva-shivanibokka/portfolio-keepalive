# Status

Last successful check: 2026-09-08

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.092759s  {"status":"ok","uptime_seconds":58933.3,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 21.710353s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.151976s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-08T13:52:34.
search-ranking-api                    503 4.333087s  Service Unavailable
multimodal-rag-backend                200 91.363438s  {"status":"ok"}
nlp-pipeline-api                      200 181.404076s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 49.675999s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.379844s  {"status":"ok","model_available":true}
```
