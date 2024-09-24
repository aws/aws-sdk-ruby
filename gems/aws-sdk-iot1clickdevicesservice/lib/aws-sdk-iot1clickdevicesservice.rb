# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iot1clickdevicesservice)

# This module provides support for AWS IoT 1-Click Devices Service. This module is available in the
# `aws-sdk-iot1clickdevicesservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t1_click_devices_service = Aws::IoT1ClickDevicesService::Client.new
#     resp = io_t1_click_devices_service.claim_devices_by_claim_code(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT 1-Click Devices Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoT1ClickDevicesService::Errors::ServiceError
#       # rescues all AWS IoT 1-Click Devices Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoT1ClickDevicesService
  autoload :Types, 'aws-sdk-iot1clickdevicesservice/types'
  autoload :ClientApi, 'aws-sdk-iot1clickdevicesservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iot1clickdevicesservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iot1clickdevicesservice/client'
  autoload :Errors, 'aws-sdk-iot1clickdevicesservice/errors'
  autoload :Resource, 'aws-sdk-iot1clickdevicesservice/resource'
  autoload :EndpointParameters, 'aws-sdk-iot1clickdevicesservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iot1clickdevicesservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iot1clickdevicesservice/endpoints'

  GEM_VERSION = '1.61.0'

end

require_relative 'aws-sdk-iot1clickdevicesservice/customizations'
