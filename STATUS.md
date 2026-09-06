# Status

Last successful check: 2026-09-06

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.073840s  {"status":"ok","uptime_seconds":157826.4,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 0.078936s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 0.142941s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-06T20:40:09.
search-ranking-api                    503 2.268204s  Service Unavailable
multimodal-rag-backend                200 0.086319s  {"status":"ok"}
nlp-pipeline-api                      200 119.606261s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 9.179017s  {"status":"ok"}
llm-eval-backend                      200 39.531024s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.334351s  {"status":"ok","model_available":true}
```
