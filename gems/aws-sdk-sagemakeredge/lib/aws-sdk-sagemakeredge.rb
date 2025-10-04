# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SagemakerEdge', Module.new) unless Aws.const_defined?('SagemakerEdge')

# @title Amazon Sagemaker Edge Manager
# <p>SageMaker Edge Manager dataplane service for communicating with active agents.</p>
module Aws::SagemakerEdge
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sagemakeredge/types'
require_relative 'aws-sdk-sagemakeredge/paginators'
require_relative 'aws-sdk-sagemakeredge/schema'
require_relative 'aws-sdk-sagemakeredge/auth_parameters'
require_relative 'aws-sdk-sagemakeredge/auth_resolver'
require_relative 'aws-sdk-sagemakeredge/client'
require_relative 'aws-sdk-sagemakeredge/customizations'
require_relative 'aws-sdk-sagemakeredge/errors'
require_relative 'aws-sdk-sagemakeredge/endpoint_parameters'
require_relative 'aws-sdk-sagemakeredge/endpoint_provider'
require_relative 'aws-sdk-sagemakeredge/waiters'
