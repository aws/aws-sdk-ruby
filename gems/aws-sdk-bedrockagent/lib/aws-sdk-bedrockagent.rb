# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-bedrockagent/types'
require_relative 'aws-sdk-bedrockagent/client_api'
require_relative 'aws-sdk-bedrockagent/plugins/endpoints.rb'
require_relative 'aws-sdk-bedrockagent/client'
require_relative 'aws-sdk-bedrockagent/errors'
require_relative 'aws-sdk-bedrockagent/resource'
require_relative 'aws-sdk-bedrockagent/endpoint_parameters'
require_relative 'aws-sdk-bedrockagent/endpoint_provider'
require_relative 'aws-sdk-bedrockagent/endpoints'
require_relative 'aws-sdk-bedrockagent/customizations'

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
#     resp = bedrock_agent.associate_agent_knowledge_base(params)
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

  GEM_VERSION = '1.3.0'

end
