# Status

Last successful check: 2026-08-24

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.134383s  {"status":"ok","uptime_seconds":258396.6,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 17.291598s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 14.602015s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-08-24T15:04:44.
search-ranking-api                    503 5.271511s  Service Unavailable
multimodal-rag-backend                200 100.592338s  {"status":"ok"}
nlp-pipeline-api                      200 60.507447s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 11.583409s  {"status":"ok"}
llm-eval-backend                      200 55.886486s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 15.753450s  {"status":"ok","model_available":true}
```
