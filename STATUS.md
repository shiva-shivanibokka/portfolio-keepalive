# Status

Last successful check: 2026-09-06

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.213939s  {"status":"ok","uptime_seconds":141804.9,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 19.945976s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.992356s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-06T16:13:41.
search-ranking-api                    503 4.535797s  Service Unavailable
multimodal-rag-backend                200 92.127919s  {"status":"ok"}
nlp-pipeline-api                      200 113.166742s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 10.282243s  {"status":"ok"}
llm-eval-backend                      200 47.794545s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 15.282884s  {"status":"ok","model_available":true}
```
