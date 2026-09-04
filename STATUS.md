# Status

Last successful check: 2026-09-04

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.179643s  {"status":"ok","uptime_seconds":235828.5,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 20.844183s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 15.305412s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-04T10:47:07.
search-ranking-api                    503 37.504878s  Service Unavailable
multimodal-rag-backend                200 111.085492s  {"status":"ok"}
nlp-pipeline-api                      200 155.380370s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 9.758029s  {"status":"ok"}
llm-eval-backend                      200 48.135437s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.896969s  {"status":"ok","model_available":true}
```
