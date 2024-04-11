#!/usr/bin/python3
"""
Queries the Reddit API and returns the number of subscribers for a given subreddit.
"""

import requests


def number_of_subscribers(subreddit):
    """Returns the number of subscribers for a given subreddit."""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
        "User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:96.0) Gecko/20100101 Firefox/96.0"
    }  # Custom User-Agent
    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        data = response.json()
        subscribers = data["data"]["subscribers"]
        return subscribers
    else:
        return 0


if __name__ == "__main__":
    import sys

    if len(sys.argv) < 2:
        print("Please pass an argument for the subreddit to search.")
    else:
        print(number_of_subscribers(sys.argv[1]))

