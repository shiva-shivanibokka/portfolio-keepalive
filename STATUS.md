# Status

Last successful check: 2026-09-08

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.097365s  {"status":"ok","uptime_seconds":43674.6,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 19.213280s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 9.366557s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-08T09:38:08.
search-ranking-api                    503 4.592852s  Service Unavailable
multimodal-rag-backend                200 99.996824s  {"status":"ok"}
nlp-pipeline-api                      200 138.657240s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 48.719550s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.943624s  {"status":"ok","model_available":true}
```
