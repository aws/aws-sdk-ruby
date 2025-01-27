#!/bin/zsh

SCRIPT_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

ruby "$SCRIPT_DIR"/test_local_only.rb "$1"
ruby "$SCRIPT_DIR"/test_secretsmanager.rb "$1"
ruby "$SCRIPT_DIR"/test_cloudwatch.rb "$1"

if [ ! -d "$SCRIPT_DIR"/test-output/combined ]; then
  mkdir "$SCRIPT_DIR"/test-output/combined
fi

cat "$SCRIPT_DIR"/test-output/local-only/data.json "$SCRIPT_DIR"/test-output/secretsmanager/data.json "$SCRIPT_DIR"/test-output/cloudwatch/data.json > "$SCRIPT_DIR"/test-output/combined/combined.json
