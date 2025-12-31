# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lexruntimev2)

# This module provides support for Amazon Lex Runtime V2. This module is available in the
# `aws-sdk-lexruntimev2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lex_runtime_v2 = Aws::LexRuntimeV2::Client.new
#     resp = lex_runtime_v2.delete_session(params)
#
# See {Client} for more information.
#
# # Async Client
#
# The {AsyncClient} class provides one asynchronous method for each API operation.
# Operation methods each accept a hash of request parameters and return an async
# response. For streaming operations, you can signal input events and register
# output event callbacks before waiting on the response.
#
#     lex_runtime_v2 = Aws::LexRuntimeV2::AsyncClient.new
#     resp = lex_runtime_v2.delete_session(
#       # params and input stream
#      ) do |output_stream|
#       # register callbacks for events
#     end
#
# See {AsyncClient} for more information.
#
# # Errors
#
# Errors returned from Amazon Lex Runtime V2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LexRuntimeV2::Errors::ServiceError
#       # rescues all Amazon Lex Runtime V2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LexRuntimeV2
  autoload :Types, 'aws-sdk-lexruntimev2/types'
  autoload :ClientApi, 'aws-sdk-lexruntimev2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lexruntimev2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lexruntimev2/client'
  autoload :Errors, 'aws-sdk-lexruntimev2/errors'
  autoload :Resource, 'aws-sdk-lexruntimev2/resource'
  autoload :EndpointParameters, 'aws-sdk-lexruntimev2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lexruntimev2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lexruntimev2/endpoints'
  autoload :AsyncClient, 'aws-sdk-lexruntimev2/async_client'
  autoload :EventStreams, 'aws-sdk-lexruntimev2/event_streams'

  GEM_VERSION = '1.62.0'

end

require_relative 'aws-sdk-lexruntimev2/customizations'
