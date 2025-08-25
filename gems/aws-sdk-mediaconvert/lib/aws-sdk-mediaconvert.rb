# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediaconvert)

# This module provides support for AWS Elemental MediaConvert. This module is available in the
# `aws-sdk-mediaconvert` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_convert = Aws::MediaConvert::Client.new
#     resp = media_convert.associate_certificate(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elemental MediaConvert are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaConvert::Errors::ServiceError
#       # rescues all AWS Elemental MediaConvert API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaConvert
  autoload :Types, 'aws-sdk-mediaconvert/types'
  autoload :ClientApi, 'aws-sdk-mediaconvert/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mediaconvert/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mediaconvert/client'
  autoload :Errors, 'aws-sdk-mediaconvert/errors'
  autoload :Resource, 'aws-sdk-mediaconvert/resource'
  autoload :EndpointParameters, 'aws-sdk-mediaconvert/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mediaconvert/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mediaconvert/endpoints'

  GEM_VERSION = '1.169.0'

end

require_relative 'aws-sdk-mediaconvert/customizations'
