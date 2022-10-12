#!/usr/bin/env bash

set -x

rm -rf package.json package-lock.json node_modules

npm init -y

bash npm-dt.sh superagent lib-sc orm-modeling
