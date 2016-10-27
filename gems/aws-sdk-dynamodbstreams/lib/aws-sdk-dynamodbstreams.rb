# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-dynamodbstreams/types'
require_relative 'aws-sdk-dynamodbstreams/client_api'
require_relative 'aws-sdk-dynamodbstreams/client'
require_relative 'aws-sdk-dynamodbstreams/errors'
require_relative 'aws-sdk-dynamodbstreams/waiters'
require_relative 'aws-sdk-dynamodbstreams/resource'

module Aws
  # @service
  # This module provides support for Amazon DynamoDB Streams, which shipped in `aws-sdk-dynamodbstreams` gem.
  #
  # # Aws::DynamoDBStreams::Client
  #
  # The {Aws::DynamoDBStreams::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     dynamodbstreams = Aws::DynamoDBStreams::Client.new
  #     resp = dynamodbstreams.describe_stream(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::DynamoDBStreams::Errors
  #
  # Errors returned from Amazon DynamoDB Streams all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DynamoDBStreams::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module DynamoDBStreams

    GEM_VERSION = '1.0.0'

  end
end
