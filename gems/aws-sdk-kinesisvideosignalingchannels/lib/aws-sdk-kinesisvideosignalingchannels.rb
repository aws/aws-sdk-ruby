# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-kinesisvideosignalingchannels/types'
require_relative 'aws-sdk-kinesisvideosignalingchannels/client_api'
require_relative 'aws-sdk-kinesisvideosignalingchannels/client'
require_relative 'aws-sdk-kinesisvideosignalingchannels/errors'
require_relative 'aws-sdk-kinesisvideosignalingchannels/resource'
require_relative 'aws-sdk-kinesisvideosignalingchannels/customizations'

# This module provides support for Amazon Kinesis Video Signaling Channels. This module is available in the
# `aws-sdk-kinesisvideosignalingchannels` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kinesis_video_signaling_channels = Aws::KinesisVideoSignalingChannels::Client.new
#     resp = kinesis_video_signaling_channels.get_ice_server_config(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kinesis Video Signaling Channels are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KinesisVideoSignalingChannels::Errors::ServiceError
#       # rescues all Amazon Kinesis Video Signaling Channels API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KinesisVideoSignalingChannels

  GEM_VERSION = '1.8.0'

end
