# Status

Last successful check: 2026-09-09

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.075421s  {"status":"ok","uptime_seconds":114782.9,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 17.734365s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 15.695000s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-09T05:23:21.
search-ranking-api                    503 4.366419s  Service Unavailable
multimodal-rag-backend                200 93.895398s  {"status":"ok"}
nlp-pipeline-api                      200 131.925247s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 46.323153s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 20.403880s  {"status":"ok","model_available":true}
```
