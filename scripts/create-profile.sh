#!/bin/bash
curl --include --request POST http://localhost:4741/profile \
--header "Content-Type: application/json" \
--data '{
  "credentials": {
    "email": "bill",
    "password": "bill",
    "password_confirmation": "bill"
  },
  "menu_item": {
    "price": "9.99",
    "name": "Pizza",
    "description": "Saucy goodness",
    "location": "200 Blue St, Cat City"
  }
}'
