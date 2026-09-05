# Status

Last successful check: 2026-09-05

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.114790s  {"status":"ok","uptime_seconds":73479.6,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 16.272251s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.995280s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-05T21:14:53.
search-ranking-api                    503 3.376398s  Service Unavailable
multimodal-rag-backend                200 93.818435s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
competitor-intelligence-engine        200 9.593273s  {"status":"ok"}
llm-eval-backend                      200 49.069114s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.194575s  {"status":"ok","model_available":true}
```
