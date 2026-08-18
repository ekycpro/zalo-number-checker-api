#!/usr/bin/env bash
set -euo pipefail
: "${EKYCPRO_API_KEY:?Set EKYCPRO_API_KEY}"
curl --fail-with-body -X POST "https://api.ekycpro.com/v1/check" -H "X-API-Key: ${EKYCPRO_API_KEY}" -H 'Content-Type: application/json' -d '{"service_type":"zalo","identifier":"+14155550100"}'
