# MR Deploy Availability Testers

MR Deploy will use three availability testers in order to verify the vailability of a PHP application.

Here are regions used thanks to AWS:

- N. Virginia (us-east-1)
- Paris (eu-west-3)
- Tokyo (ap-northeast-1)

Everything is protected with API keys in order to avoid billing kill out.
env AWS_MRDEPLOY_AVAILABILITY_API_KEY="..."