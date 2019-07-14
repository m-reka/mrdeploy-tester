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
                "elapsed_time": res.elapsed.total_seconds()
            })
        }

    except Exception as e:
        response = {
            "statusCode": 500,
            "body": json.dumps({
                "error": f"Exception: {e}"
            })
        }

    return response
