# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('KafkaConnect', Module.new) unless Aws.const_defined?('KafkaConnect')

# @title Managed Streaming for Kafka Connect
# <p/>
module Aws::KafkaConnect
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kafkaconnect/types'
require_relative 'aws-sdk-kafkaconnect/paginators'
require_relative 'aws-sdk-kafkaconnect/schema'
require_relative 'aws-sdk-kafkaconnect/auth_parameters'
require_relative 'aws-sdk-kafkaconnect/auth_resolver'
require_relative 'aws-sdk-kafkaconnect/client'
require_relative 'aws-sdk-kafkaconnect/customizations'
require_relative 'aws-sdk-kafkaconnect/errors'
require_relative 'aws-sdk-kafkaconnect/endpoint_parameters'
require_relative 'aws-sdk-kafkaconnect/endpoint_provider'
require_relative 'aws-sdk-kafkaconnect/waiters'
