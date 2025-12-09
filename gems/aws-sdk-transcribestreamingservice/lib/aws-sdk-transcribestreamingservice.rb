# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:transcribestreamingservice)

# This module provides support for Amazon Transcribe Streaming Service. This module is available in the
# `aws-sdk-transcribestreamingservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     transcribe_streaming_service = Aws::TranscribeStreamingService::Client.new
#     resp = transcribe_streaming_service.get_medical_scribe_stream(params)
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
#     transcribe_streaming_service = Aws::TranscribeStreamingService::AsyncClient.new
#     resp = transcribe_streaming_service.get_medical_scribe_stream(
#       # params and input stream
#      ) do |output_stream|
#       # register callbacks for events
#     end
#
# See {AsyncClient} for more information.
#
# # Errors
#
# Errors returned from Amazon Transcribe Streaming Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::TranscribeStreamingService::Errors::ServiceError
#       # rescues all Amazon Transcribe Streaming Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::TranscribeStreamingService
  autoload :Types, 'aws-sdk-transcribestreamingservice/types'
  autoload :ClientApi, 'aws-sdk-transcribestreamingservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-transcribestreamingservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-transcribestreamingservice/client'
  autoload :Errors, 'aws-sdk-transcribestreamingservice/errors'
  autoload :Resource, 'aws-sdk-transcribestreamingservice/resource'
  autoload :EndpointParameters, 'aws-sdk-transcribestreamingservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-transcribestreamingservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-transcribestreamingservice/endpoints'
  autoload :AsyncClient, 'aws-sdk-transcribestreamingservice/async_client'
  autoload :EventStreams, 'aws-sdk-transcribestreamingservice/event_streams'

  GEM_VERSION = '1.94.0'

end

require_relative 'aws-sdk-transcribestreamingservice/customizations'
