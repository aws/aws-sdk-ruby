# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iot1clickdevicesservice/types'
require_relative 'aws-sdk-iot1clickdevicesservice/client_api'
require_relative 'aws-sdk-iot1clickdevicesservice/client'
require_relative 'aws-sdk-iot1clickdevicesservice/errors'
require_relative 'aws-sdk-iot1clickdevicesservice/resource'
require_relative 'aws-sdk-iot1clickdevicesservice/customizations'

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

  GEM_VERSION = '1.26.0'

end
