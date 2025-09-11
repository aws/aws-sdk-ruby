# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('APIGateway', Module.new) unless Aws.const_defined?('APIGateway')

# @title Amazon API Gateway
# <fullname>Amazon API Gateway</fullname>
#          <p>Amazon API Gateway helps developers deliver robust, secure, and scalable mobile and web application back ends. API Gateway allows developers to securely connect mobile and web applications to APIs that run on Lambda, Amazon EC2, or other publicly addressable web services that are hosted outside of AWS.</p>
module Aws::APIGateway
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-apigateway/types'
require_relative 'aws-sdk-apigateway/paginators'
require_relative 'aws-sdk-apigateway/schema'
require_relative 'aws-sdk-apigateway/auth_parameters'
require_relative 'aws-sdk-apigateway/auth_resolver'
require_relative 'aws-sdk-apigateway/client'
require_relative 'aws-sdk-apigateway/customizations'
require_relative 'aws-sdk-apigateway/errors'
require_relative 'aws-sdk-apigateway/endpoint_parameters'
require_relative 'aws-sdk-apigateway/endpoint_provider'
require_relative 'aws-sdk-apigateway/waiters'
