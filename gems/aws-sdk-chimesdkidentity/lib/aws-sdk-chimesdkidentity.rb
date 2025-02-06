# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:chimesdkidentity)

# This module provides support for Amazon Chime SDK Identity. This module is available in the
# `aws-sdk-chimesdkidentity` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     chime_sdk_identity = Aws::ChimeSDKIdentity::Client.new
#     resp = chime_sdk_identity.create_app_instance(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Chime SDK Identity are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ChimeSDKIdentity::Errors::ServiceError
#       # rescues all Amazon Chime SDK Identity API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ChimeSDKIdentity
  autoload :Types, 'aws-sdk-chimesdkidentity/types'
  autoload :ClientApi, 'aws-sdk-chimesdkidentity/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-chimesdkidentity/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-chimesdkidentity/client'
  autoload :Errors, 'aws-sdk-chimesdkidentity/errors'
  autoload :Resource, 'aws-sdk-chimesdkidentity/resource'
  autoload :EndpointParameters, 'aws-sdk-chimesdkidentity/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-chimesdkidentity/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-chimesdkidentity/endpoints'

  GEM_VERSION = '1.39.0'

end

require_relative 'aws-sdk-chimesdkidentity/customizations'
