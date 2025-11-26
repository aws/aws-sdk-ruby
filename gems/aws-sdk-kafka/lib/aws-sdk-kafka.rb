# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Kafka', Module.new) unless Aws.const_defined?('Kafka')

# @title Managed Streaming for Kafka
# <p>The operations for managing an Amazon MSK cluster.</p>
module Aws::Kafka
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kafka/types'
require_relative 'aws-sdk-kafka/paginators'
require_relative 'aws-sdk-kafka/schema'
require_relative 'aws-sdk-kafka/auth_parameters'
require_relative 'aws-sdk-kafka/auth_resolver'
require_relative 'aws-sdk-kafka/client'
require_relative 'aws-sdk-kafka/errors'
require_relative 'aws-sdk-kafka/endpoint_parameters'
require_relative 'aws-sdk-kafka/endpoint_provider'
require_relative 'aws-sdk-kafka/waiters'
require_relative 'aws-sdk-kafka/customizations'
