# Status

Last successful check: 2026-09-06

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.101563s  {"status":"ok","uptime_seconds":102062.7,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 17.183919s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.824135s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-06T05:11:16.
search-ranking-api                    503 3.571424s  Service Unavailable
multimodal-rag-backend                200 97.742771s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
competitor-intelligence-engine        200 16.378853s  {"status":"ok"}
llm-eval-backend                      200 50.135036s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.587059s  {"status":"ok","model_available":true}
```
