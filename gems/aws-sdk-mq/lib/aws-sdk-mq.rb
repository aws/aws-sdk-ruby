# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Mq', Module.new) unless Aws.const_defined?('Mq')

# @title AmazonMQ
# <p>Amazon MQ is a managed message broker service for Apache ActiveMQ and RabbitMQ that makes it easy to set up and operate message brokers in the cloud. A message broker allows software applications and components to communicate using various programming languages, operating systems, and formal messaging protocols.</p>
module Aws::Mq
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mq/types'
require_relative 'aws-sdk-mq/paginators'
require_relative 'aws-sdk-mq/schema'
require_relative 'aws-sdk-mq/auth_parameters'
require_relative 'aws-sdk-mq/auth_resolver'
require_relative 'aws-sdk-mq/client'
require_relative 'aws-sdk-mq/errors'
require_relative 'aws-sdk-mq/endpoint_parameters'
require_relative 'aws-sdk-mq/endpoint_provider'
require_relative 'aws-sdk-mq/waiters'
require_relative 'aws-sdk-mq/customizations'
