# Status

Last successful check: 2026-08-28

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.101708s  {"status":"ok","uptime_seconds":568298.0,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 20.230328s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.480599s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-08-28T05:09:47.
search-ranking-api                    503 35.770800s  Service Unavailable
multimodal-rag-backend                200 108.306616s  {"status":"ok"}
nlp-pipeline-api                      200 71.970676s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 10.462419s  {"status":"ok"}
llm-eval-backend                      200 45.819020s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 12.649075s  {"status":"ok","model_available":true}
```
