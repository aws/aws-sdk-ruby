# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SageMakerRuntime', Module.new) unless Aws.const_defined?('SageMakerRuntime')

# @title Amazon SageMaker Runtime
# <p> The Amazon SageMaker runtime API. </p>
module Aws::SageMakerRuntime
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sagemakerruntime/types'
require_relative 'aws-sdk-sagemakerruntime/paginators'
require_relative 'aws-sdk-sagemakerruntime/schema'
require_relative 'aws-sdk-sagemakerruntime/auth_parameters'
require_relative 'aws-sdk-sagemakerruntime/auth_resolver'
require_relative 'aws-sdk-sagemakerruntime/client'
require_relative 'aws-sdk-sagemakerruntime/customizations'
require_relative 'aws-sdk-sagemakerruntime/errors'
require_relative 'aws-sdk-sagemakerruntime/endpoint_parameters'
require_relative 'aws-sdk-sagemakerruntime/endpoint_provider'
require_relative 'aws-sdk-sagemakerruntime/waiters'
