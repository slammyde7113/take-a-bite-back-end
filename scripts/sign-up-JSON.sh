#!/bin/bash
curl "http://localhost:4741/sign-up" \
  --include \
  --request POST \
  --data-urlencode '{
    "credentials": {
      "email": "will3",
      "password": "will",
      "password_confirmation": "will"
    }
  }'

echo
