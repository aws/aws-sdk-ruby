# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:locationservice)

# This module provides support for Amazon Location Service. This module is available in the
# `aws-sdk-locationservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     location_service = Aws::LocationService::Client.new
#     resp = location_service.associate_tracker_consumer(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Location Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LocationService::Errors::ServiceError
#       # rescues all Amazon Location Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LocationService
  autoload :Types, 'aws-sdk-locationservice/types'
  autoload :ClientApi, 'aws-sdk-locationservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-locationservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-locationservice/client'
  autoload :Errors, 'aws-sdk-locationservice/errors'
  autoload :Resource, 'aws-sdk-locationservice/resource'
  autoload :EndpointParameters, 'aws-sdk-locationservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-locationservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-locationservice/endpoints'

  GEM_VERSION = '1.75.0'

end

require_relative 'aws-sdk-locationservice/customizations'
