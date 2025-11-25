# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'bigdecimal'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DynamoDBStreams', Module.new) unless Aws.const_defined?('DynamoDBStreams')

# @title Amazon DynamoDB Streams
# <fullname>Amazon DynamoDB</fullname>
#          <p>Amazon DynamoDB Streams provides API actions for accessing streams and processing
#          stream records. To learn more about application development with Streams, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html">Capturing
#             Table Activity with DynamoDB Streams</a> in the Amazon DynamoDB Developer
#          Guide.</p>
module Aws::DynamoDBStreams
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-dynamodbstreams/types'
require_relative 'aws-sdk-dynamodbstreams/paginators'
require_relative 'aws-sdk-dynamodbstreams/schema'
require_relative 'aws-sdk-dynamodbstreams/auth_parameters'
require_relative 'aws-sdk-dynamodbstreams/auth_resolver'
require_relative 'aws-sdk-dynamodbstreams/client'
require_relative 'aws-sdk-dynamodbstreams/errors'
require_relative 'aws-sdk-dynamodbstreams/endpoint_parameters'
require_relative 'aws-sdk-dynamodbstreams/endpoint_provider'
require_relative 'aws-sdk-dynamodbstreams/waiters'
require_relative 'aws-sdk-dynamodbstreams/customizations'
