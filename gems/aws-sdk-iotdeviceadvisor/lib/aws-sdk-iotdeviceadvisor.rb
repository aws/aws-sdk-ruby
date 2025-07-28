# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotdeviceadvisor)

# This module provides support for AWS IoT Core Device Advisor. This module is available in the
# `aws-sdk-iotdeviceadvisor` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_device_advisor = Aws::IoTDeviceAdvisor::Client.new
#     resp = io_t_device_advisor.create_suite_definition(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Core Device Advisor are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTDeviceAdvisor::Errors::ServiceError
#       # rescues all AWS IoT Core Device Advisor API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTDeviceAdvisor
  autoload :Types, 'aws-sdk-iotdeviceadvisor/types'
  autoload :ClientApi, 'aws-sdk-iotdeviceadvisor/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotdeviceadvisor/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotdeviceadvisor/client'
  autoload :Errors, 'aws-sdk-iotdeviceadvisor/errors'
  autoload :Resource, 'aws-sdk-iotdeviceadvisor/resource'
  autoload :EndpointParameters, 'aws-sdk-iotdeviceadvisor/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotdeviceadvisor/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotdeviceadvisor/endpoints'

  GEM_VERSION = '1.51.0'

end

require_relative 'aws-sdk-iotdeviceadvisor/customizations'
