# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BedrockAgentRuntime', Module.new) unless Aws.const_defined?('BedrockAgentRuntime')

# @title Agents for Amazon Bedrock Runtime
# <note> <p>Amazon Bedrock Agents (now Amazon Bedrock Agents Classic) is no longer open to new customers. For capabilities similar to Bedrock Agents Classic, explore Amazon Bedrock AgentCore. Existing customers can continue to use the service as normal. For more information, see <a href="https://docs.aws.amazon.com/bedrock/latest/userguide/agents-classic-maintenance-mode.html">Amazon Bedrock Agents Classic availability change</a>.</p> </note> <p>Contains APIs related to model invocation and querying of knowledge bases.</p>
module Aws::BedrockAgentRuntime
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bedrockagentruntime/types'
require_relative 'aws-sdk-bedrockagentruntime/paginators'
require_relative 'aws-sdk-bedrockagentruntime/schema'
require_relative 'aws-sdk-bedrockagentruntime/auth_parameters'
require_relative 'aws-sdk-bedrockagentruntime/auth_resolver'
require_relative 'aws-sdk-bedrockagentruntime/client'
require_relative 'aws-sdk-bedrockagentruntime/errors'
require_relative 'aws-sdk-bedrockagentruntime/endpoint_parameters'
require_relative 'aws-sdk-bedrockagentruntime/endpoint_provider'
require_relative 'aws-sdk-bedrockagentruntime/waiters'
require_relative 'aws-sdk-bedrockagentruntime/customizations'
