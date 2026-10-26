# frozen_string_literal: true

# This is generated code!

require 'smithy-cbor'
require 'aws-sdk-core'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudWatchOmni', Module.new) unless Aws.const_defined?('CloudWatchOmni')

# @title CloudWatch Omni
# CloudWatch Omni is a unified observability experience built on Amazon
# CloudWatch. You work in a space, an isolated environment that holds your
# telemetry and controls who can access it, and your data is stored in the
# CloudWatch Dataset for correlated analysis of logs, metrics, and traces.
module Aws::CloudWatchOmni
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudwatchomni/types'
require_relative 'aws-sdk-cloudwatchomni/paginators'
require_relative 'aws-sdk-cloudwatchomni/schema'
require_relative 'aws-sdk-cloudwatchomni/auth_parameters'
require_relative 'aws-sdk-cloudwatchomni/auth_resolver'
require_relative 'aws-sdk-cloudwatchomni/client'
require_relative 'aws-sdk-cloudwatchomni/errors'
require_relative 'aws-sdk-cloudwatchomni/endpoint_parameters'
require_relative 'aws-sdk-cloudwatchomni/endpoint_provider'
require_relative 'aws-sdk-cloudwatchomni/waiters'
require_relative 'aws-sdk-cloudwatchomni/customizations'
