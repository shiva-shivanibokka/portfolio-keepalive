# Status

Last successful check: 2026-09-08

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.097018s  {"status":"ok","uptime_seconds":27403.5,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 18.264478s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.198989s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-08T05:07:00.
search-ranking-api                    503 4.311950s  Service Unavailable
multimodal-rag-backend                200 98.171343s  {"status":"ok"}
nlp-pipeline-api                      200 209.145670s  {"status":"ok","version":"0.1.0"}
llm-eval-backend                      200 48.305045s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.159581s  {"status":"ok","model_available":true}
```
