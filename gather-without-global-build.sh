#!/bin/bash

MAP=$(curl 'https://gather.town/api/getSpaces' | jq '.[].id' -r | shuf -n 1)

RESPONSE=$(curl 'https://www.googleapis.com/identitytoolkit/v3/relyingparty/signupNewUser?key=AIzaSyCifrUkqu11lgjkz2jtp4Fx_GJh58HDlFQ' \
  -H 'content-type: application/json' \
  --data-raw '{"returnSecureToken":true}')
TOKEN=$(echo "${RESPONSE}" | jq -r '.idToken')

SPACE=$(curl -X POST 'https://gather.town/api/v2/spaces' \
 -H 'authorization: Bearer '${TOKEN}'' \
 -H 'content-type: application/json;charset=UTF-8' \
 --data-raw '{"name":"'$(date '+%Y.%m.%d')'","password":"","map":"'${MAP}'","reason":"Just trying Gather out"}')

echo "https://gather.town/app/${SPACE}"
open -a "Google Chrome" "https://gather.town/app/${SPACE}"
