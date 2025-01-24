#!/bin/zsh

ruby ./perf-testing/test-local-only.rb 10
ruby ./perf-testing/test-secretsmanager.rb 10
ruby ./perf-testing/test-cloudwatch.rb 10

cat ./perf-testing/test-output/local-only/data.txt ./perf-testing/test-output/secretsmanager/data.txt ./perf-testing/test-output/cloudwatch/data.txt > ./perf-testing/test-output/combined/combined.txt
