#!/bin/bash
curl --include --request POST http://localhost:4741/coupon_menus \
--header "Content-Type: application/json" \
--data '{
  "coupon_menu": {
    "price": "2",
    "name": "First Time User",
    "description": "No Coupon",
    "location": "No Coupon"
  }
}'
