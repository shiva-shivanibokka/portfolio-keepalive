# Status

Last successful check: 2026-09-05

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.093859s  {"status":"ok","uptime_seconds":284059.1,"redis_available":false,"cache_backend":"in_proce
pcb-defect-detector                   200 20.614275s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 15.242434s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-05T00:10:58.
search-ranking-api                    503 4.330434s  Service Unavailable
multimodal-rag-backend                200 98.769514s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
competitor-intelligence-engine        200 11.086022s  {"status":"ok"}
llm-eval-backend                      200 50.047094s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 18.394372s  {"status":"ok","model_available":true}
```
