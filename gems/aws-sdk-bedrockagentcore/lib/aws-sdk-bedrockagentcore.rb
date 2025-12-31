# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrockagentcore)

# This module provides support for Amazon Bedrock AgentCore. This module is available in the
# `aws-sdk-bedrockagentcore` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bedrock_agent_core = Aws::BedrockAgentCore::Client.new
#     resp = bedrock_agent_core.batch_create_memory_records(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Bedrock AgentCore are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BedrockAgentCore::Errors::ServiceError
#       # rescues all Amazon Bedrock AgentCore API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BedrockAgentCore
  autoload :Types, 'aws-sdk-bedrockagentcore/types'
  autoload :ClientApi, 'aws-sdk-bedrockagentcore/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bedrockagentcore/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bedrockagentcore/client'
  autoload :Errors, 'aws-sdk-bedrockagentcore/errors'
  autoload :Waiters, 'aws-sdk-bedrockagentcore/waiters'
  autoload :Resource, 'aws-sdk-bedrockagentcore/resource'
  autoload :EndpointParameters, 'aws-sdk-bedrockagentcore/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bedrockagentcore/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bedrockagentcore/endpoints'
  autoload :EventStreams, 'aws-sdk-bedrockagentcore/event_streams'

  GEM_VERSION = '1.13.0'

end

require_relative 'aws-sdk-bedrockagentcore/customizations'
