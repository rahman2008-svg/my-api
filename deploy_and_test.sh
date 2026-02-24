#!/bin/bash

# 1️⃣ Git push
echo "Pushing code to GitHub..."
git add .
git commit -m "Auto deploy from script"
git pull origin main --allow-unrelated-histories --no-rebase
git push -u origin main || git push -u origin main --force

# 2️⃣ Wait for Render auto deploy (Adjust sleep time if needed)
echo "Waiting 10 seconds for Render to deploy..."
sleep 10

# 3️⃣ Test API endpoints
API_URL="https://my-api-oobu.onrender.com"

echo -e "\nTesting /sum"
curl -X POST $API_URL/sum -H "Content-Type: application/json" -d '{"a":5,"b":10}'

echo -e "\n\nTesting /multiply"
curl -X POST $API_URL/multiply -H "Content-Type: application/json" -d '{"a":5,"b":10}'

echo -e "\n\nTesting /echo"
curl -X POST $API_URL/echo -H "Content-Type: application/json" -d '{"name":"Prince","age":18}'

echo -e "\n\nTesting /random"
curl $API_URL/random

echo -e "\n\n✅ All tests done!"
