# Status

Last successful check: 2026-09-03

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.080316s  {"status":"ok","uptime_seconds":163710.3,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 25.164697s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 18.580911s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-03T14:45:17.
search-ranking-api                    429 10.112325s  Rate exceeded.
multimodal-rag-backend                200 109.725063s  {"status":"ok"}
nlp-pipeline-api                      200 73.517291s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 11.286601s  {"status":"ok"}
llm-eval-backend                      200 50.787369s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 17.027372s  {"status":"ok","model_available":true}
```
