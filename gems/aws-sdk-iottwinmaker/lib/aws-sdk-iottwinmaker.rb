# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iottwinmaker/types'
require_relative 'aws-sdk-iottwinmaker/client_api'
require_relative 'aws-sdk-iottwinmaker/plugins/endpoints.rb'
require_relative 'aws-sdk-iottwinmaker/client'
require_relative 'aws-sdk-iottwinmaker/errors'
require_relative 'aws-sdk-iottwinmaker/waiters'
require_relative 'aws-sdk-iottwinmaker/resource'
require_relative 'aws-sdk-iottwinmaker/endpoint_parameters'
require_relative 'aws-sdk-iottwinmaker/endpoint_provider'
require_relative 'aws-sdk-iottwinmaker/endpoints'
require_relative 'aws-sdk-iottwinmaker/customizations'

# This module provides support for AWS IoT TwinMaker. This module is available in the
# `aws-sdk-iottwinmaker` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_twin_maker = Aws::IoTTwinMaker::Client.new
#     resp = io_t_twin_maker.batch_put_property_values(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT TwinMaker are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTTwinMaker::Errors::ServiceError
#       # rescues all AWS IoT TwinMaker API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTTwinMaker

  GEM_VERSION = '1.16.0'

end
