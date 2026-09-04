# Status

Last successful check: 2026-09-04

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.083999s  {"status":"ok","uptime_seconds":261052.3,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 24.042497s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 18.745547s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-04T17:47:38.
search-ranking-api                    503 4.349399s  Service Unavailable
multimodal-rag-backend                200 104.712010s  {"status":"ok"}
nlp-pipeline-api                      200 164.327796s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 10.733569s  {"status":"ok"}
llm-eval-backend                      200 51.781336s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 21.310864s  {"status":"ok","model_available":true}
```
