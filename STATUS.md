# Status

Last successful check: 2026-09-07

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.110919s  {"status":"ok","uptime_seconds":205716.2,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 17.128939s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.997680s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-07T09:58:50.
search-ranking-api                    503 4.674710s  Service Unavailable
multimodal-rag-backend                200 119.369944s  {"status":"ok"}
nlp-pipeline-api                      200 75.937607s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 48.051812s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 16.327663s  {"status":"ok","model_available":true}
```
