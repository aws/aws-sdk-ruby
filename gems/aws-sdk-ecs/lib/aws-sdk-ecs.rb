# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ecs)

# This module provides support for Amazon EC2 Container Service. This module is available in the
# `aws-sdk-ecs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ecs = Aws::ECS::Client.new
#     resp = ecs.create_capacity_provider(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EC2 Container Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ECS::Errors::ServiceError
#       # rescues all Amazon EC2 Container Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ECS
  autoload :Types, 'aws-sdk-ecs/types'
  autoload :ClientApi, 'aws-sdk-ecs/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ecs/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ecs/client'
  autoload :Errors, 'aws-sdk-ecs/errors'
  autoload :Waiters, 'aws-sdk-ecs/waiters'
  autoload :Resource, 'aws-sdk-ecs/resource'
  autoload :EndpointParameters, 'aws-sdk-ecs/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ecs/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ecs/endpoints'

  GEM_VERSION = '1.201.0'

end

require_relative 'aws-sdk-ecs/customizations'
