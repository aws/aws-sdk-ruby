# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-apigatewayv2/types'
require_relative 'aws-sdk-apigatewayv2/client_api'
require_relative 'aws-sdk-apigatewayv2/client'
require_relative 'aws-sdk-apigatewayv2/errors'
require_relative 'aws-sdk-apigatewayv2/resource'
require_relative 'aws-sdk-apigatewayv2/customizations'

# This module provides support for AmazonApiGatewayV2. This module is available in the
# `aws-sdk-apigatewayv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     api_gateway_v2 = Aws::ApiGatewayV2::Client.new
#     resp = api_gateway_v2.create_api(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AmazonApiGatewayV2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ApiGatewayV2::Errors::ServiceError
#       # rescues all AmazonApiGatewayV2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ApiGatewayV2

  GEM_VERSION = '1.29.0'

end
