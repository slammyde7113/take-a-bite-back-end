#!/bin/bash
curl --include --request POST http://localhost:4741/coupon_menus \
--header "Content-Type: application/json" \
--data '{
  "coupon_menu": {
    "price": "9.99",
    "name": "No Coupon",
    "description": "No Coupon",
    "location": "No Coupon"
  }
}'
