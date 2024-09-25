# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iottwinmaker)

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
  autoload :Types, 'aws-sdk-iottwinmaker/types'
  autoload :ClientApi, 'aws-sdk-iottwinmaker/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iottwinmaker/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iottwinmaker/client'
  autoload :Errors, 'aws-sdk-iottwinmaker/errors'
  autoload :Waiters, 'aws-sdk-iottwinmaker/waiters'
  autoload :Resource, 'aws-sdk-iottwinmaker/resource'
  autoload :EndpointParameters, 'aws-sdk-iottwinmaker/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iottwinmaker/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iottwinmaker/endpoints'

  GEM_VERSION = '1.34.0'

end

require_relative 'aws-sdk-iottwinmaker/customizations'
