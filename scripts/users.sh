#!/bin/bash
TOKEN=BAhJIiU1ODIyMDlmZTUyY2IyNWQ2MTExZDdiY2M1MDY0YzRjOAY6BkVG--00d4f6776f04d22e25780521fe5c1d5a70b1cfcc

curl --include --request GET http://localhost:4741/users \
  --header "Authorization: Token token=$TOKEN"

#BAhJIiU1ODIyMDlmZTUyY2IyNWQ2MTExZDdiY2M1MDY0YzRjOAY6BkVG--00d4f6776f04d22e25780521fe5c1d5a70b1cfcc
