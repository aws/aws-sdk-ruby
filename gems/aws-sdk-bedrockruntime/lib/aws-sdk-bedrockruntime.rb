# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BedrockRuntime', Module.new) unless Aws.const_defined?('BedrockRuntime')

# @title Amazon Bedrock Runtime
# <p>Describes the API operations for running inference using Amazon Bedrock models.</p>
module Aws::BedrockRuntime
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bedrockruntime/types'
require_relative 'aws-sdk-bedrockruntime/paginators'
require_relative 'aws-sdk-bedrockruntime/schema'
require_relative 'aws-sdk-bedrockruntime/auth_parameters'
require_relative 'aws-sdk-bedrockruntime/auth_resolver'
require_relative 'aws-sdk-bedrockruntime/client'
require_relative 'aws-sdk-bedrockruntime/customizations'
require_relative 'aws-sdk-bedrockruntime/errors'
require_relative 'aws-sdk-bedrockruntime/endpoint_parameters'
require_relative 'aws-sdk-bedrockruntime/endpoint_provider'
require_relative 'aws-sdk-bedrockruntime/waiters'
