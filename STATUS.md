# Status

Last successful check: 2026-09-05

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.071242s  {"status":"ok","uptime_seconds":27952.1,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 18.406220s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 5.563701s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-05T08:35:59.
search-ranking-api                    503 3.328015s  Service Unavailable
multimodal-rag-backend                200 104.328693s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
competitor-intelligence-engine        200 9.732197s  {"status":"ok"}
llm-eval-backend                      200 18.747243s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.949526s  {"status":"ok","model_available":true}
```
