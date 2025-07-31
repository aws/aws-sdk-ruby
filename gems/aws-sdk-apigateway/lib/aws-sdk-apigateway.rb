# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:apigateway)

# This module provides support for Amazon API Gateway. This module is available in the
# `aws-sdk-apigateway` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     api_gateway = Aws::APIGateway::Client.new
#     resp = api_gateway.create_api_key(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon API Gateway are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::APIGateway::Errors::ServiceError
#       # rescues all Amazon API Gateway API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::APIGateway
  autoload :Types, 'aws-sdk-apigateway/types'
  autoload :ClientApi, 'aws-sdk-apigateway/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-apigateway/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-apigateway/client'
  autoload :Errors, 'aws-sdk-apigateway/errors'
  autoload :Resource, 'aws-sdk-apigateway/resource'
  autoload :EndpointParameters, 'aws-sdk-apigateway/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-apigateway/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-apigateway/endpoints'

  GEM_VERSION = '1.121.0'

end

require_relative 'aws-sdk-apigateway/customizations'
