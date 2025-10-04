# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('KinesisVideoWebRTCStorage', Module.new) unless Aws.const_defined?('KinesisVideoWebRTCStorage')

# @title Amazon Kinesis Video WebRTC Storage
# <fullname>webrtc</fullname>
#          <p>
#     </p>
module Aws::KinesisVideoWebRTCStorage
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kinesisvideowebrtcstorage/types'
require_relative 'aws-sdk-kinesisvideowebrtcstorage/paginators'
require_relative 'aws-sdk-kinesisvideowebrtcstorage/schema'
require_relative 'aws-sdk-kinesisvideowebrtcstorage/auth_parameters'
require_relative 'aws-sdk-kinesisvideowebrtcstorage/auth_resolver'
require_relative 'aws-sdk-kinesisvideowebrtcstorage/client'
require_relative 'aws-sdk-kinesisvideowebrtcstorage/customizations'
require_relative 'aws-sdk-kinesisvideowebrtcstorage/errors'
require_relative 'aws-sdk-kinesisvideowebrtcstorage/endpoint_parameters'
require_relative 'aws-sdk-kinesisvideowebrtcstorage/endpoint_provider'
require_relative 'aws-sdk-kinesisvideowebrtcstorage/waiters'
