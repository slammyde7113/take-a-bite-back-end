#!/bin/bash

curl --include --request POST http://localhost:4741/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "testA",
      "password": "test",
      "password_confirmation": "test"
    }
  }'
