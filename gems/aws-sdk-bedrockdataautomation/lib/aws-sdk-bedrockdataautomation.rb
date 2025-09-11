# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BedrockDataAutomation', Module.new) unless Aws.const_defined?('BedrockDataAutomation')

# @title Data Automation for Amazon Bedrock
# Amazon Bedrock Data Automation BuildTime
module Aws::BedrockDataAutomation
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bedrockdataautomation/types'
require_relative 'aws-sdk-bedrockdataautomation/paginators'
require_relative 'aws-sdk-bedrockdataautomation/schema'
require_relative 'aws-sdk-bedrockdataautomation/auth_parameters'
require_relative 'aws-sdk-bedrockdataautomation/auth_resolver'
require_relative 'aws-sdk-bedrockdataautomation/client'
require_relative 'aws-sdk-bedrockdataautomation/customizations'
require_relative 'aws-sdk-bedrockdataautomation/errors'
require_relative 'aws-sdk-bedrockdataautomation/endpoint_parameters'
require_relative 'aws-sdk-bedrockdataautomation/endpoint_provider'
require_relative 'aws-sdk-bedrockdataautomation/waiters'
