#!/bin/bash
curl --include --request PATCH http://localhost:4741/change-password/1 \
  --header "Authorization: Token token=BAhJIiU5ZTk2NTA0NGM0ZWU1YWMzYWE0MDNhMjdlODQ3NDIwZAY6BkVG--e47a38a10eeab4a555eb4c04b901d94890d6bc2e" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "test",
      "new": "test"
    }
  }'

echo
