# frozen_string_literal: true

# This is generated code!

require 'smithy-cbor'
require 'aws-sdk-core'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EventBridgeV2', Module.new) unless Aws.const_defined?('EventBridgeV2')

# @title Amazon EventBridgeV2
# Amazon EventBridge event bus API. An event bus receives events published by
# your applications and AWS services, stores them for a configurable retention
# period, and delivers them to subscribers. A subscriber filters events,
# optionally transforms them, and invokes a target such as Lambda, SQS, SNS,
# Kinesis, Step Functions, or an HTTP endpoint. The API manages event buses,
# subscribers, event sources, resource policies, and tags, and publishes
# events through PutEvents and PutRawEvents.
module Aws::EventBridgeV2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-eventbridgev2/types'
require_relative 'aws-sdk-eventbridgev2/paginators'
require_relative 'aws-sdk-eventbridgev2/schema'
require_relative 'aws-sdk-eventbridgev2/auth_parameters'
require_relative 'aws-sdk-eventbridgev2/auth_resolver'
require_relative 'aws-sdk-eventbridgev2/client'
require_relative 'aws-sdk-eventbridgev2/errors'
require_relative 'aws-sdk-eventbridgev2/endpoint_parameters'
require_relative 'aws-sdk-eventbridgev2/endpoint_provider'
require_relative 'aws-sdk-eventbridgev2/waiters'
require_relative 'aws-sdk-eventbridgev2/customizations'
