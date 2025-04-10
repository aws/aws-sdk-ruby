# frozen_string_literal: true

$LOAD_PATH.unshift(File.expand_path('build_tools/aws-sdk-code-generator/lib', __dir__))
require 'aws-sdk-code-generator'

desc 'build aws-sdk-lambda'
task 'build:aws-sdk-lambda' do
  AwsSdkCodeGenerator.generate_aws_sdk_lambda
end
