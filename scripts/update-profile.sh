#!/bin/bash
curl --include --request PATCH http://localhost:4741/profiles/65 \
--header "Content-Type: application/json" \
--data '{
  "profile": {
  "coupon_menu_id": 2
}
}'
