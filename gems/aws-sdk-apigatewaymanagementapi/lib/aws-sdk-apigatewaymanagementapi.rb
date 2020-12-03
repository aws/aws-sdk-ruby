# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-apigatewaymanagementapi/types'
require_relative 'aws-sdk-apigatewaymanagementapi/client_api'
require_relative 'aws-sdk-apigatewaymanagementapi/client'
require_relative 'aws-sdk-apigatewaymanagementapi/errors'
require_relative 'aws-sdk-apigatewaymanagementapi/resource'
require_relative 'aws-sdk-apigatewaymanagementapi/customizations'

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

  GEM_VERSION = '1.19.0'

end
