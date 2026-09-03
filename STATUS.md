# Status

Last successful check: 2026-09-03

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.138168s  {"status":"ok","uptime_seconds":186247.5,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 27.968164s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 18.444802s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-03T21:00:57.
search-ranking-api                    503 4.395969s  Service Unavailable
multimodal-rag-backend                200 133.809432s  {"status":"ok"}
nlp-pipeline-api                      200 235.821814s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 12.059362s  {"status":"ok"}
llm-eval-backend                      200 49.397849s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 17.048720s  {"status":"ok","model_available":true}
```
