# MR Deploy Availability Testers

MR Deploy will use three availability testers in order to verify the vailability of a PHP application.

Here are regions used thanks to AWS:

- N. Virginia (us-east-1)
- Paris (eu-west-3)
- Tokyo (ap-northeast-1)

Everything is protected with API keys in order to avoid billing kill or poisoning calls.
```shell
env AWS_MRDEPLOY_AVAILABILITY_API_KEY="..." deploy_to_region.sh 
```

You can deploy the aws lambda to all MR Deploy regions via the script ``deploy_to_region.sh``.
Or even delete currently deployed lambda by running the script with this argument: ``deploy_to_region.sh --delete``

**IMPORTANT**: You have to configure your aws account in local for that please use the AWS cli and follow the documentation: https://docs.aws.amazon.com/cli/latest/userguide/install-macos.html