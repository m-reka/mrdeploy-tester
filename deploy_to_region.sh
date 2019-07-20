#!/usr/bin/env bash

DELETE_REQUESTED=$1
regions=("us-east-1" "eu-west-3" "ap-northeast-1")
for region in "${regions[@]}"; do
    if [[ ${DELETE_REQUESTED} == "--delete" ]]; then
        echo "Removing mrdelpoy-tester from ${region} ..."
        env ${!AWS_MRDEPLOY_AVAILABILITY_API_KEY} sls remove --region ${region}
    else
        echo "Deploying mrdelpoy-tester to ${region} ..."
        env ${!AWS_MRDEPLOY_AVAILABILITY_API_KEY} sls deploy --region ${region}
    fi
done
echo "Deployment finished"
#echo $test|grep "GET -" |cut -d " " -f5