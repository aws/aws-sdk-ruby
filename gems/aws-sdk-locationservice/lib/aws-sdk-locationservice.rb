# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-locationservice/types'
require_relative 'aws-sdk-locationservice/client_api'
require_relative 'aws-sdk-locationservice/plugins/endpoints.rb'
require_relative 'aws-sdk-locationservice/client'
require_relative 'aws-sdk-locationservice/errors'
require_relative 'aws-sdk-locationservice/resource'
require_relative 'aws-sdk-locationservice/endpoint_parameters'
require_relative 'aws-sdk-locationservice/endpoint_provider'
require_relative 'aws-sdk-locationservice/endpoints'
require_relative 'aws-sdk-locationservice/customizations'

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

  GEM_VERSION = '1.36.0'

end
