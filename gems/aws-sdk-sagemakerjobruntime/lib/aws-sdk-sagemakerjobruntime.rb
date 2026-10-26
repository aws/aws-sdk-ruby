# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SagemakerJobRuntime', Module.new) unless Aws.const_defined?('SagemakerJobRuntime')

# @title Sagemaker Job Runtime Service
# Agentic RFT Runtime Service - manages trajectory and transition data
# for reinforcement fine-tuning jobs.
module Aws::SagemakerJobRuntime
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sagemakerjobruntime/types'
require_relative 'aws-sdk-sagemakerjobruntime/paginators'
require_relative 'aws-sdk-sagemakerjobruntime/schema'
require_relative 'aws-sdk-sagemakerjobruntime/auth_parameters'
require_relative 'aws-sdk-sagemakerjobruntime/auth_resolver'
require_relative 'aws-sdk-sagemakerjobruntime/client'
require_relative 'aws-sdk-sagemakerjobruntime/errors'
require_relative 'aws-sdk-sagemakerjobruntime/endpoint_parameters'
require_relative 'aws-sdk-sagemakerjobruntime/endpoint_provider'
require_relative 'aws-sdk-sagemakerjobruntime/waiters'
require_relative 'aws-sdk-sagemakerjobruntime/customizations'
