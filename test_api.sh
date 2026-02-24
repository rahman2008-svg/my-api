#!/bin/bash

echo "Testing /sum"
curl -X POST https://my-api-oobu.onrender.com/sum -H "Content-Type: application/json" -d '{"a":5,"b":10}'
echo -e "\n\nTesting /multiply"
curl -X POST https://my-api-oobu.onrender.com/multiply -H "Content-Type: application/json" -d '{"a":5,"b":10}'
echo -e "\n\nTesting /echo"
curl -X POST https://my-api-oobu.onrender.com/echo -H "Content-Type: application/json" -d '{"name":"Prince","age":18}'
echo -e "\n\nTesting /random"
curl https://my-api-oobu.onrender.com/random
