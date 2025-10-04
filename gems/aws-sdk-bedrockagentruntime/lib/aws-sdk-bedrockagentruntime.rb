# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BedrockAgentRuntime', Module.new) unless Aws.const_defined?('BedrockAgentRuntime')

# @title Agents for Amazon Bedrock Runtime
# <p>Contains APIs related to model invocation and querying of knowledge bases.</p>
module Aws::BedrockAgentRuntime
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bedrockagentruntime/types'
require_relative 'aws-sdk-bedrockagentruntime/paginators'
require_relative 'aws-sdk-bedrockagentruntime/schema'
require_relative 'aws-sdk-bedrockagentruntime/auth_parameters'
require_relative 'aws-sdk-bedrockagentruntime/auth_resolver'
require_relative 'aws-sdk-bedrockagentruntime/client'
require_relative 'aws-sdk-bedrockagentruntime/customizations'
require_relative 'aws-sdk-bedrockagentruntime/errors'
require_relative 'aws-sdk-bedrockagentruntime/endpoint_parameters'
require_relative 'aws-sdk-bedrockagentruntime/endpoint_provider'
require_relative 'aws-sdk-bedrockagentruntime/waiters'
