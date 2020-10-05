# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-dynamodbstreams/types'
require_relative 'aws-sdk-dynamodbstreams/client_api'
require_relative 'aws-sdk-dynamodbstreams/client'
require_relative 'aws-sdk-dynamodbstreams/errors'
require_relative 'aws-sdk-dynamodbstreams/resource'
require_relative 'aws-sdk-dynamodbstreams/customizations'

# This module provides support for Amazon DynamoDB Streams. This module is available in the
# `aws-sdk-dynamodbstreams` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     dynamo_db_streams = Aws::DynamoDBStreams::Client.new
#     resp = dynamo_db_streams.describe_stream(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon DynamoDB Streams are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DynamoDBStreams::Errors::ServiceError
#       # rescues all Amazon DynamoDB Streams API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DynamoDBStreams

  GEM_VERSION = '1.26.0'

end
