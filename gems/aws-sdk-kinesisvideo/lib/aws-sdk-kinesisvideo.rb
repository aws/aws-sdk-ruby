# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-kinesisvideo/types'
require_relative 'aws-sdk-kinesisvideo/client_api'
require_relative 'aws-sdk-kinesisvideo/client'
require_relative 'aws-sdk-kinesisvideo/errors'
require_relative 'aws-sdk-kinesisvideo/resource'
require_relative 'aws-sdk-kinesisvideo/customizations'

# This module provides support for Amazon Kinesis Video Streams. This module is available in the
# `aws-sdk-kinesisvideo` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kinesis_video = Aws::KinesisVideo::Client.new
#     resp = kinesis_video.create_signaling_channel(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kinesis Video Streams are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KinesisVideo::Errors::ServiceError
#       # rescues all Amazon Kinesis Video Streams API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KinesisVideo

  GEM_VERSION = '1.30.0'

end
