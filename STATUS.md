# Status

Last successful check: 2026-08-16

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.096258s  {"status":"ok","uptime_seconds":234951.3,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 4.934846s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 6.063780s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-08-16T20:22:32.
search-ranking-api                    000  timeouts  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-08-16T20:22:32.
multimodal-rag-backend                200 76.714984s  {"status":"ok"}
nlp-pipeline-api                      200 39.365952s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 3.088313s  {"status":"ok"}
llm-eval-backend                      200 38.659659s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 3.942792s  {"status":"ok","model_available":true}
```
