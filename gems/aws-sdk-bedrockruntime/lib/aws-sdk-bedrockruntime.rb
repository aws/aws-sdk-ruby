# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrockruntime)

# This module provides support for Amazon Bedrock Runtime. This module is available in the
# `aws-sdk-bedrockruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bedrock_runtime = Aws::BedrockRuntime::Client.new
#     resp = bedrock_runtime.apply_guardrail(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Bedrock Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BedrockRuntime::Errors::ServiceError
#       # rescues all Amazon Bedrock Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BedrockRuntime
  autoload :Types, 'aws-sdk-bedrockruntime/types'
  autoload :ClientApi, 'aws-sdk-bedrockruntime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bedrockruntime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bedrockruntime/client'
  autoload :Errors, 'aws-sdk-bedrockruntime/errors'
  autoload :Waiters, 'aws-sdk-bedrockruntime/waiters'
  autoload :Resource, 'aws-sdk-bedrockruntime/resource'
  autoload :EndpointParameters, 'aws-sdk-bedrockruntime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bedrockruntime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bedrockruntime/endpoints'
  autoload :AsyncClient, 'aws-sdk-bedrockruntime/async_client'
  autoload :EventStreams, 'aws-sdk-bedrockruntime/event_streams'

  GEM_VERSION = '1.61.0'

end

require_relative 'aws-sdk-bedrockruntime/customizations'
