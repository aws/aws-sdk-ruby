# frozen_string_literal: true

require 'json'
require 'smithy'

require_relative 'aws-sdk-code-generator/welds'

# This module is used to generate the AWS SDK for Ruby.
module AwsSdkCodeGenerator
  # temporary
  def self.generate_aws_sdk_lambda
    model = JSON.load_file('apis/lambda/model.json')
    plan_options = {
      module_name: 'Aws::Lambda',
      gem_version: '2.0.0.pre0',
      destination_root: 'gems/aws-sdk-lambda'
    }
    plan = Smithy::Plan.new(model, :client, plan_options)
    Smithy.generate(plan)
  end
end
