#!/usr/bin/env bash

# Extract the payload from a JSON-formatted Pub/Sub message

# Parse the message payload as JSON
payload="$(cat "${1:-/dev/stdin}")"
echo "${payload}" | jq -r '.message.data' | base64 -d
