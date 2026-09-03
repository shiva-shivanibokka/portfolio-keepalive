# Status

Last successful check: 2026-09-03

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.103716s  {"status":"ok","uptime_seconds":114945.3,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 26.653377s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 19.237004s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-03T01:12:34.
search-ranking-api                    429 10.364546s  Rate exceeded.
multimodal-rag-backend                200 101.627773s  {"status":"ok"}
nlp-pipeline-api                      200 70.065712s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 10.174549s  {"status":"ok"}
llm-eval-backend                      200 47.178754s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 17.756784s  {"status":"ok","model_available":true}
```
