# frozen_string_literal: true

require 'json'
require 'smithy'

require_relative 'aws-sdk-code-generator/services'
require_relative 'aws-sdk-code-generator/welds'

# This module is used to generate the AWS SDK for Ruby.
module AwsSdkCodeGenerator
  VERSION = '1.0.0.pre0'
end
