# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BedrockAgentCore', Module.new) unless Aws.const_defined?('BedrockAgentCore')

# @title Amazon Bedrock AgentCore
# <p>Welcome to the Amazon Bedrock AgentCore Data Plane API reference. Data Plane actions process and handle data or workloads within Amazon Web Services services. </p>
module Aws::BedrockAgentCore
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bedrockagentcore/types'
require_relative 'aws-sdk-bedrockagentcore/paginators'
require_relative 'aws-sdk-bedrockagentcore/schema'
require_relative 'aws-sdk-bedrockagentcore/auth_parameters'
require_relative 'aws-sdk-bedrockagentcore/auth_resolver'
require_relative 'aws-sdk-bedrockagentcore/client'
require_relative 'aws-sdk-bedrockagentcore/errors'
require_relative 'aws-sdk-bedrockagentcore/endpoint_parameters'
require_relative 'aws-sdk-bedrockagentcore/endpoint_provider'
require_relative 'aws-sdk-bedrockagentcore/waiters'
require_relative 'aws-sdk-bedrockagentcore/customizations'
