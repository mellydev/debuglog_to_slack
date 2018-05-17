#!/bin/bash

# Usage: slackpost "<webhook_url>" "<channel>" "<message>"

webhook_url="ENTER WEB HOOK HERE"
if [[ $webhook_url == "" ]]
then
        echo "No webhook_url specified"
        exit 1
fi

# shift
# channel=$1
# if [[ $channel == "" ]]
# then
#         echo "No channel specified"
#         exit 1
# fi

shift
username="USERNAME"
if [[ $username == "" ]]
then
        echo "No username specified"
        exit 1
fi

shift

# Get the value of the debug file
value=$(PATH TO FILE YOU WANT TO READ)

# Need to escape this so we can send logs
cat <<FOO
$value
FOO

text="$value"

if [[ $text == "" ]]
then
        echo "Debug log cleared"
        exit 1
fi

escapedText=$(echo $text | sed 's/"/\"/g' | sed "s/'/\'/g" )
json="{\"username\": \"bot\", \"icon_emoji\": \":fire:\", \"channel\": \"$channel\", \"text\": \"$escapedText\"}"

curl -s -d "payload=$json" "$webhook_url"

> PATH TO FILE YOU WANT TO CLEAR OR JUST REMOVE THE LINE
