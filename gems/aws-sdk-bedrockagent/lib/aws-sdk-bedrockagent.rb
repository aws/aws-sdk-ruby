# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BedrockAgent', Module.new) unless Aws.const_defined?('BedrockAgent')

# @title Agents for Amazon Bedrock
# <p>Describes the API operations for creating and managing Amazon Bedrock agents.</p>
module Aws::BedrockAgent
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bedrockagent/types'
require_relative 'aws-sdk-bedrockagent/paginators'
require_relative 'aws-sdk-bedrockagent/schema'
require_relative 'aws-sdk-bedrockagent/auth_parameters'
require_relative 'aws-sdk-bedrockagent/auth_resolver'
require_relative 'aws-sdk-bedrockagent/client'
require_relative 'aws-sdk-bedrockagent/errors'
require_relative 'aws-sdk-bedrockagent/endpoint_parameters'
require_relative 'aws-sdk-bedrockagent/endpoint_provider'
require_relative 'aws-sdk-bedrockagent/waiters'
require_relative 'aws-sdk-bedrockagent/customizations'
