# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotdataplane)

# This module provides support for AWS IoT Data Plane. This module is available in the
# `aws-sdk-iotdataplane` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_data_plane = Aws::IoTDataPlane::Client.new
#     resp = io_t_data_plane.delete_connection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Data Plane are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTDataPlane::Errors::ServiceError
#       # rescues all AWS IoT Data Plane API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTDataPlane
  autoload :Types, 'aws-sdk-iotdataplane/types'
  autoload :ClientApi, 'aws-sdk-iotdataplane/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotdataplane/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotdataplane/client'
  autoload :Errors, 'aws-sdk-iotdataplane/errors'
  autoload :Resource, 'aws-sdk-iotdataplane/resource'
  autoload :EndpointParameters, 'aws-sdk-iotdataplane/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotdataplane/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotdataplane/endpoints'

  GEM_VERSION = '1.81.0'

end

require_relative 'aws-sdk-iotdataplane/customizations'
