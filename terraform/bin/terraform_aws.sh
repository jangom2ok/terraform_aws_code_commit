#!/usr/bin/env bash

set -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cd $SCRIPT_DIR/../

docker run -i --rm -t -v $(pwd)/aws:/aws -w /aws hashicorp/terraform:light $@
