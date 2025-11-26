# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ApiGatewayV2', Module.new) unless Aws.const_defined?('ApiGatewayV2')

# @title AmazonApiGatewayV2
# <p>Amazon API Gateway V2</p>
module Aws::ApiGatewayV2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-apigatewayv2/types'
require_relative 'aws-sdk-apigatewayv2/paginators'
require_relative 'aws-sdk-apigatewayv2/schema'
require_relative 'aws-sdk-apigatewayv2/auth_parameters'
require_relative 'aws-sdk-apigatewayv2/auth_resolver'
require_relative 'aws-sdk-apigatewayv2/client'
require_relative 'aws-sdk-apigatewayv2/errors'
require_relative 'aws-sdk-apigatewayv2/endpoint_parameters'
require_relative 'aws-sdk-apigatewayv2/endpoint_provider'
require_relative 'aws-sdk-apigatewayv2/waiters'
require_relative 'aws-sdk-apigatewayv2/customizations'
