#!/bin/bash
curl --include --request DELETE http://localhost:4741/sign-out/1 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVlZDk0NDgxYzA3YmNhNDJkMTkxMTc0YzVkZWJmMTc3ZQY6BkVG--e3db795a7ac5c1fef69e73dccfc0666cc8b031d4"

#ID=1 TOKEN=BAhJIiU5ZTk2NTA0NGM0ZWU1YWMzYWE0MDNhMjdlODQ3NDIwZAY6BkVG--e47a38a10eeab4a555eb4c04b901d94890d6bc2e scripts/sign-out.sh
