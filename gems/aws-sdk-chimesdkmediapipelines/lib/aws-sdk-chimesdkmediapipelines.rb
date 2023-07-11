# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-chimesdkmediapipelines/types'
require_relative 'aws-sdk-chimesdkmediapipelines/client_api'
require_relative 'aws-sdk-chimesdkmediapipelines/plugins/endpoints.rb'
require_relative 'aws-sdk-chimesdkmediapipelines/client'
require_relative 'aws-sdk-chimesdkmediapipelines/errors'
require_relative 'aws-sdk-chimesdkmediapipelines/resource'
require_relative 'aws-sdk-chimesdkmediapipelines/endpoint_parameters'
require_relative 'aws-sdk-chimesdkmediapipelines/endpoint_provider'
require_relative 'aws-sdk-chimesdkmediapipelines/endpoints'
require_relative 'aws-sdk-chimesdkmediapipelines/customizations'

# This module provides support for Amazon Chime SDK Media Pipelines. This module is available in the
# `aws-sdk-chimesdkmediapipelines` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     chime_sdk_media_pipelines = Aws::ChimeSDKMediaPipelines::Client.new
#     resp = chime_sdk_media_pipelines.create_media_capture_pipeline(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Chime SDK Media Pipelines are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ChimeSDKMediaPipelines::Errors::ServiceError
#       # rescues all Amazon Chime SDK Media Pipelines API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ChimeSDKMediaPipelines

  GEM_VERSION = '1.10.0'

end
