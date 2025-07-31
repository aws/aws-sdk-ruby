# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesisvideo)

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
  autoload :Types, 'aws-sdk-kinesisvideo/types'
  autoload :ClientApi, 'aws-sdk-kinesisvideo/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-kinesisvideo/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-kinesisvideo/client'
  autoload :Errors, 'aws-sdk-kinesisvideo/errors'
  autoload :Resource, 'aws-sdk-kinesisvideo/resource'
  autoload :EndpointParameters, 'aws-sdk-kinesisvideo/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-kinesisvideo/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-kinesisvideo/endpoints'

  GEM_VERSION = '1.82.0'

end

require_relative 'aws-sdk-kinesisvideo/customizations'
