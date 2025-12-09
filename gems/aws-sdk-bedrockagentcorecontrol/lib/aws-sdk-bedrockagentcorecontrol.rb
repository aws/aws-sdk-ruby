# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrockagentcorecontrol)

# This module provides support for Amazon Bedrock AgentCore Control. This module is available in the
# `aws-sdk-bedrockagentcorecontrol` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bedrock_agent_core_control = Aws::BedrockAgentCoreControl::Client.new
#     resp = bedrock_agent_core_control.create_agent_runtime(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Bedrock AgentCore Control are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BedrockAgentCoreControl::Errors::ServiceError
#       # rescues all Amazon Bedrock AgentCore Control API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BedrockAgentCoreControl
  autoload :Types, 'aws-sdk-bedrockagentcorecontrol/types'
  autoload :ClientApi, 'aws-sdk-bedrockagentcorecontrol/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bedrockagentcorecontrol/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bedrockagentcorecontrol/client'
  autoload :Errors, 'aws-sdk-bedrockagentcorecontrol/errors'
  autoload :Waiters, 'aws-sdk-bedrockagentcorecontrol/waiters'
  autoload :Resource, 'aws-sdk-bedrockagentcorecontrol/resource'
  autoload :EndpointParameters, 'aws-sdk-bedrockagentcorecontrol/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bedrockagentcorecontrol/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bedrockagentcorecontrol/endpoints'

  GEM_VERSION = '1.16.0'

end

require_relative 'aws-sdk-bedrockagentcorecontrol/customizations'
