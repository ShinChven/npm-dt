#!/usr/bin/env bash
set -x

# Install packages
# shellcheck disable=SC2086
# shellcheck disable=SC2048
npm i $*

# Read the split words into an array based on space delimiter
read -r -a strArr <<< "$*"

# Install DT for each package
for val in "${strArr[@]}"; do
  echo "install DT for https://www.npmjs.com/package/$val"
  npm i -D @types/"$val" || true
done
