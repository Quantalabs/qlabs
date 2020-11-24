#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://api.stackbit.com/pull/5fbc818a07819b001c1e83ba

# build site
npm run build

echo "stackbit-build.sh: finished build"
