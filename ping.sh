#!/usr/bin/env bash
# Warm every service and report. Exits non-zero if any service is unreachable,
# so a broken demo produces a failed workflow run and an email — a keepalive
# nobody checks is indistinguishable from no keepalive at all.
set -uo pipefail
fail=0
printf '%-34s %6s %9s  %s\n' SERVICE CODE TIME BODY
while IFS=$'\t' read -r name url; do
  [[ -z "${name// }" || "${name:0:1}" == "#" ]] && continue
  out=$(curl -s -o /tmp/body -w '%{http_code} %{time_total}' --max-time 240 "$url" || echo "000 timeout")
  code=${out%% *}; secs=${out##* }
  body=$(head -c 90 /tmp/body 2>/dev/null | tr '\n' ' ')
  printf '%-34s %6s %8ss  %s\n' "$name" "$code" "$secs" "$body"
  [[ "$code" == "200" ]] || fail=1
done < services.txt
exit $fail
