# Status

Last successful check: 2026-08-25

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.108768s  {"status":"ok","uptime_seconds":337846.0,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 20.038919s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 19.251465s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-08-25T13:09:01.
search-ranking-api                    503 101.732659s  Service Unavailable
multimodal-rag-backend                200 100.298857s  {"status":"ok"}
nlp-pipeline-api                      200 68.375882s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 11.896853s  {"status":"ok"}
llm-eval-backend                      200 53.735124s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 16.239727s  {"status":"ok","model_available":true}
```
