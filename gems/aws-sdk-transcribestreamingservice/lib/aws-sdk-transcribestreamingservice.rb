# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-transcribestreamingservice/types'
require_relative 'aws-sdk-transcribestreamingservice/client_api'
require_relative 'aws-sdk-transcribestreamingservice/client'
require_relative 'aws-sdk-transcribestreamingservice/errors'
require_relative 'aws-sdk-transcribestreamingservice/resource'
require_relative 'aws-sdk-transcribestreamingservice/customizations'
require_relative 'aws-sdk-transcribestreamingservice/async_client'
require_relative 'aws-sdk-transcribestreamingservice/event_streams'

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
#     resp = transcribe_streaming_service.start_stream_transcription(params)
#
# See {Client} for more information.
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

  GEM_VERSION = '1.22.0'

end
