# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:pinpointemail)

# This module provides support for Amazon Pinpoint Email Service. This module is available in the
# `aws-sdk-pinpointemail` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pinpoint_email = Aws::PinpointEmail::Client.new
#     resp = pinpoint_email.create_configuration_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Pinpoint Email Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PinpointEmail::Errors::ServiceError
#       # rescues all Amazon Pinpoint Email Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PinpointEmail
  autoload :Types, 'aws-sdk-pinpointemail/types'
  autoload :ClientApi, 'aws-sdk-pinpointemail/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-pinpointemail/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-pinpointemail/client'
  autoload :Errors, 'aws-sdk-pinpointemail/errors'
  autoload :Resource, 'aws-sdk-pinpointemail/resource'
  autoload :EndpointParameters, 'aws-sdk-pinpointemail/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-pinpointemail/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-pinpointemail/endpoints'

  GEM_VERSION = '1.63.0'

end

require_relative 'aws-sdk-pinpointemail/customizations'
