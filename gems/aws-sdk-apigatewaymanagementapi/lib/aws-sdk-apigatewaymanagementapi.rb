# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ApiGatewayManagementApi', Module.new) unless Aws.const_defined?('ApiGatewayManagementApi')

# @title AmazonApiGatewayManagementApi
# <p>The Amazon API Gateway Management API allows you to directly manage runtime aspects of your deployed APIs. To use it, you must explicitly set the SDK's endpoint to point to the endpoint of your deployed API. The endpoint will be of the form https://{api-id}.execute-api.{region}.amazonaws.com/{stage}, or will be the endpoint corresponding to your API's custom domain and base path, if applicable.</p>
module Aws::ApiGatewayManagementApi
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-apigatewaymanagementapi/types'
require_relative 'aws-sdk-apigatewaymanagementapi/paginators'
require_relative 'aws-sdk-apigatewaymanagementapi/schema'
require_relative 'aws-sdk-apigatewaymanagementapi/auth_parameters'
require_relative 'aws-sdk-apigatewaymanagementapi/auth_resolver'
require_relative 'aws-sdk-apigatewaymanagementapi/client'
require_relative 'aws-sdk-apigatewaymanagementapi/customizations'
require_relative 'aws-sdk-apigatewaymanagementapi/errors'
require_relative 'aws-sdk-apigatewaymanagementapi/endpoint_parameters'
require_relative 'aws-sdk-apigatewaymanagementapi/endpoint_provider'
require_relative 'aws-sdk-apigatewaymanagementapi/waiters'
