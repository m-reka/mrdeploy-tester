#!/usr/bin/env bash

regions=("us-east-1" "eu-west-3" "ap-northeast-1")
for region in "${regions[@]}"; do
    echo "Deploying mrdelpoy-tester to ${region} ..."
    env ${!AWS_MRDEPLOY_AVAILABILITY_API_KEY} sls deploy --region ${region}
done
echo "Deployment finished"