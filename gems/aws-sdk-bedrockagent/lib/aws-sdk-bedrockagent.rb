# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrockagent)

# This module provides support for Agents for Amazon Bedrock. This module is available in the
# `aws-sdk-bedrockagent` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bedrock_agent = Aws::BedrockAgent::Client.new
#     resp = bedrock_agent.associate_agent_collaborator(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Agents for Amazon Bedrock are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BedrockAgent::Errors::ServiceError
#       # rescues all Agents for Amazon Bedrock API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BedrockAgent
  autoload :Types, 'aws-sdk-bedrockagent/types'
  autoload :ClientApi, 'aws-sdk-bedrockagent/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bedrockagent/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bedrockagent/client'
  autoload :Errors, 'aws-sdk-bedrockagent/errors'
  autoload :Resource, 'aws-sdk-bedrockagent/resource'
  autoload :EndpointParameters, 'aws-sdk-bedrockagent/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bedrockagent/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bedrockagent/endpoints'

  GEM_VERSION = '1.44.0'

end

require_relative 'aws-sdk-bedrockagent/customizations'
