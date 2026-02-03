#!/usr/bin/env bash
bots=$(curl -s -L https://github.com/ai-robots-txt/ai.robots.txt/raw/refs/heads/main/robots.json | jq -r 'keys | join("|")')
bots="${bots}|NLUX_IAHarvester|AliyunSecBot|keys-so-bot"
sed -i "s~@botForbidden header_regexp User-Agent \"[^\"]*\"~@botForbidden header_regexp User-Agent \"${bots}\"~" $CADDYFILE_PATH
