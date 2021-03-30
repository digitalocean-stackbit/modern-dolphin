#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://staging.widget.stackbit.com/init.js 606303431a5a03001631a31e

echo "stackbit-build.sh: finished build"
