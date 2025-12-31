# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakerruntimehttp2)

# This module provides support for Amazon SageMaker Runtime HTTP2. This module is available in the
# `aws-sdk-sagemakerruntimehttp2` gem.
#
# # Async Client
#
# The {AsyncClient} class provides one asynchronous method for each API operation.
# Operation methods each accept a hash of request parameters and return an async
# response. For streaming operations, you can signal input events and register
# output event callbacks before waiting on the response.
#
#     sage_maker_runtime_http2 = Aws::SageMakerRuntimeHTTP2::AsyncClient.new
#     resp = sage_maker_runtime_http2.invoke_endpoint_with_bidirectional_stream(
#       # params and input stream
#      ) do |output_stream|
#       # register callbacks for events
#     end
#
# See {AsyncClient} for more information.
#
# # Errors
#
# Errors returned from Amazon SageMaker Runtime HTTP2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SageMakerRuntimeHTTP2::Errors::ServiceError
#       # rescues all Amazon SageMaker Runtime HTTP2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SageMakerRuntimeHTTP2
  autoload :Types, 'aws-sdk-sagemakerruntimehttp2/types'
  autoload :ClientApi, 'aws-sdk-sagemakerruntimehttp2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sagemakerruntimehttp2/plugins/endpoints.rb'
  end
  autoload :Errors, 'aws-sdk-sagemakerruntimehttp2/errors'
  autoload :EndpointParameters, 'aws-sdk-sagemakerruntimehttp2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sagemakerruntimehttp2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sagemakerruntimehttp2/endpoints'
  autoload :AsyncClient, 'aws-sdk-sagemakerruntimehttp2/async_client'
  autoload :EventStreams, 'aws-sdk-sagemakerruntimehttp2/event_streams'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-sagemakerruntimehttp2/customizations'
