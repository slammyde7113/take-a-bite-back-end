#!/bin/bash
curl --include --request POST http://localhost:4741/sign-in \
--header "Content-Type: application/json" \
--header "Authorization: Token token=e92810789a0c72b4d0ca04de5ca976ce"\
--data '{
  "credentials": {
    "email": "testA",
    "password": "test"
  }
}'
