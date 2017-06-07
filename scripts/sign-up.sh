#!/bin/bash

API="${API_ORIGIN:-https://mighty-ridge-10376.herokuapp.com/}"
URL_PATH="/sign-up"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "bill",
      "password": "bill",
      "password_confirmation": "bill"
    }
  }'

echo
