# Status

Last successful check: 2026-08-18

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.084162s  {"status":"ok","uptime_seconds":338875.0,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 18.932380s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.472871s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-08-18T01:14:57.
search-ranking-api                    503 142.317340s  Service Unavailable
multimodal-rag-backend                200 91.105630s  {"status":"ok"}
nlp-pipeline-api                      200 60.788860s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 9.014137s  {"status":"ok"}
llm-eval-backend                      200 48.435605s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.323794s  {"status":"ok","model_available":true}
```
