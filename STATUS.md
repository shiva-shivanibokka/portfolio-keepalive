# Status

Last successful check: 2026-09-06

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.070442s  {"status":"ok","uptime_seconds":117632.7,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 17.891141s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.177084s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-06T09:30:47.
search-ranking-api                    503 3.337559s  Service Unavailable
multimodal-rag-backend                200 103.043704s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
competitor-intelligence-engine        200 9.130014s  {"status":"ok"}
llm-eval-backend                      200 47.076269s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.855791s  {"status":"ok","model_available":true}
```
