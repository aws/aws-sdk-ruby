# frozen_string_literal: true

require 'aws-sdk-code-generator'

desc 'build aws-sdk-lambda'
task 'build:aws-sdk-lambda' do
  AwsSdkCodeGenerator.generate_aws_sdk_lambda
end
