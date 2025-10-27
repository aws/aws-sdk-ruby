# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotwireless)

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
  autoload :Types, 'aws-sdk-iotwireless/types'
  autoload :ClientApi, 'aws-sdk-iotwireless/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotwireless/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotwireless/client'
  autoload :Errors, 'aws-sdk-iotwireless/errors'
  autoload :Resource, 'aws-sdk-iotwireless/resource'
  autoload :EndpointParameters, 'aws-sdk-iotwireless/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotwireless/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotwireless/endpoints'

  GEM_VERSION = '1.77.0'

end

require_relative 'aws-sdk-iotwireless/customizations'
