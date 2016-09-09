# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-apigateway/types'
require_relative 'aws-sdk-apigateway/client_api'
require_relative 'aws-sdk-apigateway/client'
require_relative 'aws-sdk-apigateway/errors'
require_relative 'aws-sdk-apigateway/waiters'
require_relative 'aws-sdk-apigateway/resource'

# customizations for generated code
require_relative 'aws-sdk-apigateway/customizations.rb'

module Aws
  # This module provides support for Amazon API Gateway.
  #
  # # Aws::APIGateway::Client
  #
  # The {Aws::APIGateway::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     apigateway = Aws::APIGateway::Client.new
  #     resp = apigateway.create_api_key(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::APIGateway::Errors
  #
  # Errors returned from Amazon API Gateway all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::APIGateway::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module APIGateway

    GEM_VERSION = '1.0.0'

  end
end
