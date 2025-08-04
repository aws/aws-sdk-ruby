# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesisvideowebrtcstorage)

# This module provides support for Amazon Kinesis Video WebRTC Storage. This module is available in the
# `aws-sdk-kinesisvideowebrtcstorage` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kinesis_video_web_rtc_storage = Aws::KinesisVideoWebRTCStorage::Client.new
#     resp = kinesis_video_web_rtc_storage.join_storage_session(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kinesis Video WebRTC Storage are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KinesisVideoWebRTCStorage::Errors::ServiceError
#       # rescues all Amazon Kinesis Video WebRTC Storage API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KinesisVideoWebRTCStorage
  autoload :Types, 'aws-sdk-kinesisvideowebrtcstorage/types'
  autoload :ClientApi, 'aws-sdk-kinesisvideowebrtcstorage/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-kinesisvideowebrtcstorage/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-kinesisvideowebrtcstorage/client'
  autoload :Errors, 'aws-sdk-kinesisvideowebrtcstorage/errors'
  autoload :Resource, 'aws-sdk-kinesisvideowebrtcstorage/resource'
  autoload :EndpointParameters, 'aws-sdk-kinesisvideowebrtcstorage/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-kinesisvideowebrtcstorage/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-kinesisvideowebrtcstorage/endpoints'

  GEM_VERSION = '1.35.0'

end

require_relative 'aws-sdk-kinesisvideowebrtcstorage/customizations'
