# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iotfleethub/types'
require_relative 'aws-sdk-iotfleethub/client_api'
require_relative 'aws-sdk-iotfleethub/plugins/endpoints.rb'
require_relative 'aws-sdk-iotfleethub/client'
require_relative 'aws-sdk-iotfleethub/errors'
require_relative 'aws-sdk-iotfleethub/resource'
require_relative 'aws-sdk-iotfleethub/endpoint_parameters'
require_relative 'aws-sdk-iotfleethub/endpoint_provider'
require_relative 'aws-sdk-iotfleethub/endpoints'
require_relative 'aws-sdk-iotfleethub/customizations'

# This module provides support for AWS IoT Fleet Hub. This module is available in the
# `aws-sdk-iotfleethub` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_fleet_hub = Aws::IoTFleetHub::Client.new
#     resp = io_t_fleet_hub.create_application(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Fleet Hub are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTFleetHub::Errors::ServiceError
#       # rescues all AWS IoT Fleet Hub API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTFleetHub

  GEM_VERSION = '1.18.0'

end
