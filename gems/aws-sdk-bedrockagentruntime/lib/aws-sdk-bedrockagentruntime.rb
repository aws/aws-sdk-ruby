# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrockagentruntime)

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
#     resp = bedrock_agent_runtime.create_invocation(params)
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
  autoload :Types, 'aws-sdk-bedrockagentruntime/types'
  autoload :ClientApi, 'aws-sdk-bedrockagentruntime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bedrockagentruntime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bedrockagentruntime/client'
  autoload :Errors, 'aws-sdk-bedrockagentruntime/errors'
  autoload :Waiters, 'aws-sdk-bedrockagentruntime/waiters'
  autoload :Resource, 'aws-sdk-bedrockagentruntime/resource'
  autoload :EndpointParameters, 'aws-sdk-bedrockagentruntime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bedrockagentruntime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bedrockagentruntime/endpoints'
  autoload :EventStreams, 'aws-sdk-bedrockagentruntime/event_streams'

  GEM_VERSION = '1.68.0'

end

require_relative 'aws-sdk-bedrockagentruntime/customizations'
