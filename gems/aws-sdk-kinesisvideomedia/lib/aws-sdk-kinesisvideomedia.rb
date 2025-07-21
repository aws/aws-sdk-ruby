# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesisvideomedia)

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
  autoload :Types, 'aws-sdk-kinesisvideomedia/types'
  autoload :ClientApi, 'aws-sdk-kinesisvideomedia/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-kinesisvideomedia/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-kinesisvideomedia/client'
  autoload :Errors, 'aws-sdk-kinesisvideomedia/errors'
  autoload :Resource, 'aws-sdk-kinesisvideomedia/resource'
  autoload :EndpointParameters, 'aws-sdk-kinesisvideomedia/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-kinesisvideomedia/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-kinesisvideomedia/endpoints'

  GEM_VERSION = '1.70.0'

end

require_relative 'aws-sdk-kinesisvideomedia/customizations'
