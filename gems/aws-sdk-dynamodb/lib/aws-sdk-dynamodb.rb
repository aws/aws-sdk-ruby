# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-dynamodb/types'
require_relative 'aws-sdk-dynamodb/client_api'
require_relative 'aws-sdk-dynamodb/client'
require_relative 'aws-sdk-dynamodb/errors'
require_relative 'aws-sdk-dynamodb/waiters'
require_relative 'aws-sdk-dynamodb/resource'
require_relative 'aws-sdk-dynamodb/table'

# customizations for generated code
require_relative 'aws-sdk-dynamodb/customizations.rb'

module Aws
  # @service
  # This module provides support for Amazon DynamoDB, which shipped in `aws-sdk-dynamodb` gem.
  #
  # # Aws::DynamoDB::Client
  #
  # The {Aws::DynamoDB::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     dynamodb = Aws::DynamoDB::Client.new
  #     resp = dynamodb.batch_get_item(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::DynamoDB::Errors
  #
  # Errors returned from Amazon DynamoDB all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DynamoDB::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module DynamoDB

    GEM_VERSION = '1.0.0'

  end
end
