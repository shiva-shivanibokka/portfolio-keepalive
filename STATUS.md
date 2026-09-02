# Status

Last successful check: 2026-09-02

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.140897s  {"status":"ok","uptime_seconds":28679.2,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 20.934922s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 17.209294s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-02T01:14:40.
search-ranking-api                    429 10.145149s  Rate exceeded.
multimodal-rag-backend                200 115.573910s  {"status":"ok"}
nlp-pipeline-api                      200 64.558975s  {"status":"ok","version":"0.1.0"}
competitor-intelligence-engine        200 12.007329s  {"status":"ok"}
llm-eval-backend                      200 47.853835s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 16.349812s  {"status":"ok","model_available":true}
```
