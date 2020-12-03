# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-kinesisvideoarchivedmedia/types'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/client_api'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/client'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/errors'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/resource'
require_relative 'aws-sdk-kinesisvideoarchivedmedia/customizations'

# This module provides support for Amazon Kinesis Video Streams Archived Media. This module is available in the
# `aws-sdk-kinesisvideoarchivedmedia` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kinesis_video_archived_media = Aws::KinesisVideoArchivedMedia::Client.new
#     resp = kinesis_video_archived_media.get_clip(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kinesis Video Streams Archived Media are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KinesisVideoArchivedMedia::Errors::ServiceError
#       # rescues all Amazon Kinesis Video Streams Archived Media API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KinesisVideoArchivedMedia

  GEM_VERSION = '1.29.0'

end
