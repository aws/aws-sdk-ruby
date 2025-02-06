# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:rekognition)

# This module provides support for Amazon Rekognition. This module is available in the
# `aws-sdk-rekognition` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     rekognition = Aws::Rekognition::Client.new
#     resp = rekognition.associate_faces(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Rekognition are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Rekognition::Errors::ServiceError
#       # rescues all Amazon Rekognition API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Rekognition
  autoload :Types, 'aws-sdk-rekognition/types'
  autoload :ClientApi, 'aws-sdk-rekognition/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-rekognition/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-rekognition/client'
  autoload :Errors, 'aws-sdk-rekognition/errors'
  autoload :Waiters, 'aws-sdk-rekognition/waiters'
  autoload :Resource, 'aws-sdk-rekognition/resource'
  autoload :EndpointParameters, 'aws-sdk-rekognition/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-rekognition/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-rekognition/endpoints'

  GEM_VERSION = '1.112.0'

end

require_relative 'aws-sdk-rekognition/customizations'
