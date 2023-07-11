# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-snowdevicemanagement/types'
require_relative 'aws-sdk-snowdevicemanagement/client_api'
require_relative 'aws-sdk-snowdevicemanagement/plugins/endpoints.rb'
require_relative 'aws-sdk-snowdevicemanagement/client'
require_relative 'aws-sdk-snowdevicemanagement/errors'
require_relative 'aws-sdk-snowdevicemanagement/resource'
require_relative 'aws-sdk-snowdevicemanagement/endpoint_parameters'
require_relative 'aws-sdk-snowdevicemanagement/endpoint_provider'
require_relative 'aws-sdk-snowdevicemanagement/endpoints'
require_relative 'aws-sdk-snowdevicemanagement/customizations'

# This module provides support for AWS Snow Device Management. This module is available in the
# `aws-sdk-snowdevicemanagement` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     snow_device_management = Aws::SnowDeviceManagement::Client.new
#     resp = snow_device_management.cancel_task(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Snow Device Management are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SnowDeviceManagement::Errors::ServiceError
#       # rescues all AWS Snow Device Management API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SnowDeviceManagement

  GEM_VERSION = '1.14.0'

end
