# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iotwireless/types'
require_relative 'aws-sdk-iotwireless/client_api'
require_relative 'aws-sdk-iotwireless/plugins/endpoints.rb'
require_relative 'aws-sdk-iotwireless/client'
require_relative 'aws-sdk-iotwireless/errors'
require_relative 'aws-sdk-iotwireless/resource'
require_relative 'aws-sdk-iotwireless/endpoint_parameters'
require_relative 'aws-sdk-iotwireless/endpoint_provider'
require_relative 'aws-sdk-iotwireless/endpoints'
require_relative 'aws-sdk-iotwireless/customizations'

# This module provides support for AWS IoT Wireless. This module is available in the
# `aws-sdk-iotwireless` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_wireless = Aws::IoTWireless::Client.new
#     resp = io_t_wireless.associate_aws_account_with_partner_account(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Wireless are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTWireless::Errors::ServiceError
#       # rescues all AWS IoT Wireless API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTWireless

  GEM_VERSION = '1.38.0'

end
