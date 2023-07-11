# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iotdeviceadvisor/types'
require_relative 'aws-sdk-iotdeviceadvisor/client_api'
require_relative 'aws-sdk-iotdeviceadvisor/plugins/endpoints.rb'
require_relative 'aws-sdk-iotdeviceadvisor/client'
require_relative 'aws-sdk-iotdeviceadvisor/errors'
require_relative 'aws-sdk-iotdeviceadvisor/resource'
require_relative 'aws-sdk-iotdeviceadvisor/endpoint_parameters'
require_relative 'aws-sdk-iotdeviceadvisor/endpoint_provider'
require_relative 'aws-sdk-iotdeviceadvisor/endpoints'
require_relative 'aws-sdk-iotdeviceadvisor/customizations'

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

  GEM_VERSION = '1.25.0'

end
