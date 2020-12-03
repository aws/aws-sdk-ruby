# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-kinesisvideomedia/types'
require_relative 'aws-sdk-kinesisvideomedia/client_api'
require_relative 'aws-sdk-kinesisvideomedia/client'
require_relative 'aws-sdk-kinesisvideomedia/errors'
require_relative 'aws-sdk-kinesisvideomedia/resource'
require_relative 'aws-sdk-kinesisvideomedia/customizations'

# This module provides support for Amazon Kinesis Video Streams Media. This module is available in the
# `aws-sdk-kinesisvideomedia` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kinesis_video_media = Aws::KinesisVideoMedia::Client.new
#     resp = kinesis_video_media.get_media(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kinesis Video Streams Media are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KinesisVideoMedia::Errors::ServiceError
#       # rescues all Amazon Kinesis Video Streams Media API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KinesisVideoMedia

  GEM_VERSION = '1.26.0'

end
