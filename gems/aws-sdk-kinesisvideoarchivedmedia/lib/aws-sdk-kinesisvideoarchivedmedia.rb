# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesisvideoarchivedmedia)

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
  autoload :Types, 'aws-sdk-kinesisvideoarchivedmedia/types'
  autoload :ClientApi, 'aws-sdk-kinesisvideoarchivedmedia/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-kinesisvideoarchivedmedia/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-kinesisvideoarchivedmedia/client'
  autoload :Errors, 'aws-sdk-kinesisvideoarchivedmedia/errors'
  autoload :Resource, 'aws-sdk-kinesisvideoarchivedmedia/resource'
  autoload :EndpointParameters, 'aws-sdk-kinesisvideoarchivedmedia/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-kinesisvideoarchivedmedia/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-kinesisvideoarchivedmedia/endpoints'

  GEM_VERSION = '1.84.0'

end

require_relative 'aws-sdk-kinesisvideoarchivedmedia/customizations'
