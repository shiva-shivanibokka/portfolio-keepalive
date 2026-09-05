# Status

Last successful check: 2026-09-05

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.094459s  {"status":"ok","uptime_seconds":13702.6,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 19.388655s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 13.535428s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-05T04:38:38.
search-ranking-api                    503 4.426278s  Service Unavailable
multimodal-rag-backend                200 98.209802s  {"status":"ok"}
nlp-pipeline-api                      200 110.062922s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 9.808860s  {"status":"ok"}
llm-eval-backend                      200 50.516928s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 12.970973s  {"status":"ok","model_available":true}
```
