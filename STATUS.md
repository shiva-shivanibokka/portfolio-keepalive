# Status

Last successful check: 2026-09-08

```
SERVICE                              CODE      TIME  BODY
model-serving                         200 0.104672s  {"status":"ok","uptime_seconds":82218.8,"redis_available":false,"cache_backend":"in_proces
pcb-defect-detector                   200 19.886359s  {"model_version":"local:best.pt","classes":["missing_hole","mouse_bite","open_circuit","sh
feature-store-api                     200 16.697669s  {"status":"ok","components":{"redis":"ok","duckdb":"ok"},"timestamp":"2026-09-08T20:20:41.
search-ranking-api                    500 9.200036s   <html><head> <meta http-equiv="content-type" content="text/html;charset=utf-8"> <title>50
multimodal-rag-backend                200 103.712712s  {"status":"ok"}
nlp-pipeline-api                      000  timeouts  {"status":"ok"}
llm-eval-backend                      200 46.338446s  {"status":"ok","db":"ok","model":"lazy"}
liver-hcc                             200 13.906495s  {"status":"ok","model_available":true}
```
