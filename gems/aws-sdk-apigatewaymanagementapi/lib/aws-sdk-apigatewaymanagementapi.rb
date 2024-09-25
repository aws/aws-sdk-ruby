# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:apigatewaymanagementapi)

# This module provides support for AmazonApiGatewayManagementApi. This module is available in the
# `aws-sdk-apigatewaymanagementapi` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     api_gateway_management_api = Aws::ApiGatewayManagementApi::Client.new
#     resp = api_gateway_management_api.delete_connection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AmazonApiGatewayManagementApi are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ApiGatewayManagementApi::Errors::ServiceError
#       # rescues all AmazonApiGatewayManagementApi API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ApiGatewayManagementApi
  autoload :Types, 'aws-sdk-apigatewaymanagementapi/types'
  autoload :ClientApi, 'aws-sdk-apigatewaymanagementapi/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-apigatewaymanagementapi/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-apigatewaymanagementapi/client'
  autoload :Errors, 'aws-sdk-apigatewaymanagementapi/errors'
  autoload :Resource, 'aws-sdk-apigatewaymanagementapi/resource'
  autoload :EndpointParameters, 'aws-sdk-apigatewaymanagementapi/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-apigatewaymanagementapi/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-apigatewaymanagementapi/endpoints'

  GEM_VERSION = '1.54.0'

end

require_relative 'aws-sdk-apigatewaymanagementapi/customizations'
