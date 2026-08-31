# Status

Last successful check: 2026-08-31

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.105356s  {"status":"ok","uptime_seconds":49649.5,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 21.828873s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.269156s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-08-31T21:04:53.
search-ranking-api                    503 109.796899s  Service Unavailable
multimodal-rag-backend                200 109.425989s  {"status":"ok"}
nlp-pipeline-api                      200 76.472766s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 9.034353s  {"status":"ok"}
llm-eval-backend                      200 46.427684s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 15.838238s  {"status":"ok","model_available":true}
```
