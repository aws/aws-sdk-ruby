# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iotroborunner/types'
require_relative 'aws-sdk-iotroborunner/client_api'
require_relative 'aws-sdk-iotroborunner/plugins/endpoints.rb'
require_relative 'aws-sdk-iotroborunner/client'
require_relative 'aws-sdk-iotroborunner/errors'
require_relative 'aws-sdk-iotroborunner/resource'
require_relative 'aws-sdk-iotroborunner/endpoint_parameters'
require_relative 'aws-sdk-iotroborunner/endpoint_provider'
require_relative 'aws-sdk-iotroborunner/endpoints'
require_relative 'aws-sdk-iotroborunner/customizations'

# This module provides support for AWS IoT RoboRunner. This module is available in the
# `aws-sdk-iotroborunner` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_robo_runner = Aws::IoTRoboRunner::Client.new
#     resp = io_t_robo_runner.create_destination(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT RoboRunner are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTRoboRunner::Errors::ServiceError
#       # rescues all AWS IoT RoboRunner API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTRoboRunner

  GEM_VERSION = '1.6.0'

end
