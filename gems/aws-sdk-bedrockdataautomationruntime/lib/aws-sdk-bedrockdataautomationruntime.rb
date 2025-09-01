# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BedrockDataAutomationRuntime', Module.new) unless Aws.const_defined?('BedrockDataAutomationRuntime')

# @title Runtime for Amazon Bedrock Data Automation
# Amazon Bedrock Data Automation Runtime
module Aws::BedrockDataAutomationRuntime
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bedrockdataautomationruntime/types'
require_relative 'aws-sdk-bedrockdataautomationruntime/paginators'
require_relative 'aws-sdk-bedrockdataautomationruntime/schema'
require_relative 'aws-sdk-bedrockdataautomationruntime/auth_parameters'
require_relative 'aws-sdk-bedrockdataautomationruntime/auth_resolver'
require_relative 'aws-sdk-bedrockdataautomationruntime/client'
require_relative 'aws-sdk-bedrockdataautomationruntime/customizations'
require_relative 'aws-sdk-bedrockdataautomationruntime/errors'
require_relative 'aws-sdk-bedrockdataautomationruntime/endpoint_parameters'
require_relative 'aws-sdk-bedrockdataautomationruntime/endpoint_provider'
require_relative 'aws-sdk-bedrockdataautomationruntime/waiters'
