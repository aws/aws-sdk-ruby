# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:snowdevicemanagement)

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
  autoload :Types, 'aws-sdk-snowdevicemanagement/types'
  autoload :ClientApi, 'aws-sdk-snowdevicemanagement/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-snowdevicemanagement/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-snowdevicemanagement/client'
  autoload :Errors, 'aws-sdk-snowdevicemanagement/errors'
  autoload :Resource, 'aws-sdk-snowdevicemanagement/resource'
  autoload :EndpointParameters, 'aws-sdk-snowdevicemanagement/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-snowdevicemanagement/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-snowdevicemanagement/endpoints'

  GEM_VERSION = '1.46.0'

end

require_relative 'aws-sdk-snowdevicemanagement/customizations'
