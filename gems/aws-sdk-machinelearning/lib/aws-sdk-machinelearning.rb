# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MachineLearning', Module.new) unless Aws.const_defined?('MachineLearning')

# @title Amazon Machine Learning
# Definition of the public APIs
# 		exposed by Amazon Machine Learning
module Aws::MachineLearning
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-machinelearning/types'
require_relative 'aws-sdk-machinelearning/paginators'
require_relative 'aws-sdk-machinelearning/schema'
require_relative 'aws-sdk-machinelearning/auth_parameters'
require_relative 'aws-sdk-machinelearning/auth_resolver'
require_relative 'aws-sdk-machinelearning/client'
require_relative 'aws-sdk-machinelearning/customizations'
require_relative 'aws-sdk-machinelearning/errors'
require_relative 'aws-sdk-machinelearning/endpoint_parameters'
require_relative 'aws-sdk-machinelearning/endpoint_provider'
require_relative 'aws-sdk-machinelearning/waiters'
