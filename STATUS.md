# Status

Last successful check: 2026-09-06

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.102216s  {"status":"ok","uptime_seconds":149648.0,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 17.908517s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.905782s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-06T18:24:23.
search-ranking-api                    503 3.356214s  Service Unavailable
multimodal-rag-backend                200 97.657467s  {"status":"ok"}
nlp-pipeline-api                      200 67.285611s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 0.126387s  {"status":"ok"}
llm-eval-backend                      200 48.900014s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 8.506487s  {"status":"ok","model_available":true}
```
