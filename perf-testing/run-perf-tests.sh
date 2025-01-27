#!/bin/zsh

ruby ./perf-testing/test_local_only.rb "$1"
ruby ./perf-testing/test_secretsmanager.rb "$1"
ruby ./perf-testing/test_cloudwatch.rb "$1"

cat ./perf-testing/test-output/local-only/data.json ./perf-testing/test-output/secretsmanager/data.json ./perf-testing/test-output/cloudwatch/data.json > ./perf-testing/test-output/combined/combined.json
