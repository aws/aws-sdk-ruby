# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotfleethub)

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
  autoload :Types, 'aws-sdk-iotfleethub/types'
  autoload :ClientApi, 'aws-sdk-iotfleethub/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotfleethub/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotfleethub/client'
  autoload :Errors, 'aws-sdk-iotfleethub/errors'
  autoload :Resource, 'aws-sdk-iotfleethub/resource'
  autoload :EndpointParameters, 'aws-sdk-iotfleethub/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotfleethub/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotfleethub/endpoints'

  GEM_VERSION = '1.45.0'

end

require_relative 'aws-sdk-iotfleethub/customizations'
