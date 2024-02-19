# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-bedrockagentruntime/types'
require_relative 'aws-sdk-bedrockagentruntime/client_api'
require_relative 'aws-sdk-bedrockagentruntime/plugins/endpoints.rb'
require_relative 'aws-sdk-bedrockagentruntime/client'
require_relative 'aws-sdk-bedrockagentruntime/errors'
require_relative 'aws-sdk-bedrockagentruntime/resource'
require_relative 'aws-sdk-bedrockagentruntime/endpoint_parameters'
require_relative 'aws-sdk-bedrockagentruntime/endpoint_provider'
require_relative 'aws-sdk-bedrockagentruntime/endpoints'
require_relative 'aws-sdk-bedrockagentruntime/customizations'
require_relative 'aws-sdk-bedrockagentruntime/event_streams'

# This module provides support for Agents for Amazon Bedrock Runtime. This module is available in the
# `aws-sdk-bedrockagentruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bedrock_agent_runtime = Aws::BedrockAgentRuntime::Client.new
#     resp = bedrock_agent_runtime.invoke_agent(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Agents for Amazon Bedrock Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BedrockAgentRuntime::Errors::ServiceError
#       # rescues all Agents for Amazon Bedrock Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BedrockAgentRuntime

  GEM_VERSION = '1.1.0'

end
