# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('KinesisVideoSignaling', Module.new) unless Aws.const_defined?('KinesisVideoSignaling')

# @title Amazon Kinesis Video Signaling Channels
# <p>Kinesis Video Streams Signaling Service is a intermediate service that establishes a
#             communication channel for discovering peers, transmitting offers and answers in order to
#             establish peer-to-peer connection in webRTC technology.</p>
module Aws::KinesisVideoSignaling
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kinesisvideosignaling/types'
require_relative 'aws-sdk-kinesisvideosignaling/paginators'
require_relative 'aws-sdk-kinesisvideosignaling/schema'
require_relative 'aws-sdk-kinesisvideosignaling/auth_parameters'
require_relative 'aws-sdk-kinesisvideosignaling/auth_resolver'
require_relative 'aws-sdk-kinesisvideosignaling/client'
require_relative 'aws-sdk-kinesisvideosignaling/customizations'
require_relative 'aws-sdk-kinesisvideosignaling/errors'
require_relative 'aws-sdk-kinesisvideosignaling/endpoint_parameters'
require_relative 'aws-sdk-kinesisvideosignaling/endpoint_provider'
require_relative 'aws-sdk-kinesisvideosignaling/waiters'
