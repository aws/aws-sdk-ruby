# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Kinesis', Module.new) unless Aws.const_defined?('Kinesis')

# @title Amazon Kinesis
# <fullname>Amazon Kinesis Data Streams Service API Reference</fullname>
#          <p>Amazon Kinesis Data Streams is a managed service that scales elastically for real-time
#             processing of streaming big data.</p>
module Aws::Kinesis
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kinesis/types'
require_relative 'aws-sdk-kinesis/paginators'
require_relative 'aws-sdk-kinesis/schema'
require_relative 'aws-sdk-kinesis/auth_parameters'
require_relative 'aws-sdk-kinesis/auth_resolver'
require_relative 'aws-sdk-kinesis/client'
require_relative 'aws-sdk-kinesis/errors'
require_relative 'aws-sdk-kinesis/endpoint_parameters'
require_relative 'aws-sdk-kinesis/endpoint_provider'
require_relative 'aws-sdk-kinesis/waiters'
require_relative 'aws-sdk-kinesis/customizations'
