import json

import requests


def check(event, context):
    website = event['queryStringParameters']['website']

    try:
        res = requests.get(website)
        response = {
            "statusCode": 200,
            "body": json.dumps({
                "status_code": res.status_code,
                "content": str(res.content),
                "elapsed_time": res.elapsed.total_seconds()
            })
        }

    except Exception as e:
        response = {
            "statusCode": 500,
            "content": f"Exception: {str(e)}"
        }

    return response
