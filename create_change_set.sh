#!/bin/bash

set -o nounset
set -o pipefail

CHANGE_SET_NAME="change-set-$(date +%Y%H%M%s)"
STACK_NAME="foobar"

cd "$(dirname "$0")" || exit

aws cloudformation create-change-set \
--stack-name "$STACK_NAME" \
--change-set-name "$CHANGE_SET_NAME" \
--template-body file://template.yaml