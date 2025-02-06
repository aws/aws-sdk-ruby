# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotthingsgraph)

# This module provides support for AWS IoT Things Graph. This module is available in the
# `aws-sdk-iotthingsgraph` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_things_graph = Aws::IoTThingsGraph::Client.new
#     resp = io_t_things_graph.associate_entity_to_thing(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Things Graph are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTThingsGraph::Errors::ServiceError
#       # rescues all AWS IoT Things Graph API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTThingsGraph
  autoload :Types, 'aws-sdk-iotthingsgraph/types'
  autoload :ClientApi, 'aws-sdk-iotthingsgraph/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotthingsgraph/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotthingsgraph/client'
  autoload :Errors, 'aws-sdk-iotthingsgraph/errors'
  autoload :Resource, 'aws-sdk-iotthingsgraph/resource'
  autoload :EndpointParameters, 'aws-sdk-iotthingsgraph/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotthingsgraph/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotthingsgraph/endpoints'

  GEM_VERSION = '1.52.0'

end

require_relative 'aws-sdk-iotthingsgraph/customizations'
