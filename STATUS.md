# Status

Last successful check: 2026-09-05

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.080106s  {"status":"ok","uptime_seconds":40389.6,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 19.144478s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 17.964196s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-05T12:03:29.
search-ranking-api                    503 4.310955s  Service Unavailable
multimodal-rag-backend                200 101.204436s  {"status":"ok"}
nlp-pipeline-api                      200 116.348663s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 9.221816s  {"status":"ok"}
llm-eval-backend                      200 48.775339s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 14.775983s  {"status":"ok","model_available":true}
```
