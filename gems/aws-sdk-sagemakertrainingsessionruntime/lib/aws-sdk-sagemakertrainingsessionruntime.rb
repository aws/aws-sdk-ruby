# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SageMakerTrainingSessionRuntime', Module.new) unless Aws.const_defined?('SageMakerTrainingSessionRuntime')

# @title SageMaker Training Session Runtime
# <p>Amazon SageMaker Training Session Runtime provides APIs for executing training operations and sampling operations against a running training session. Use these APIs to submit asynchronous training steps (such as forward-backward passes, optimizer steps, and checkpoint saves) and to generate text samples from the model being trained.</p>
module Aws::SageMakerTrainingSessionRuntime
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sagemakertrainingsessionruntime/types'
require_relative 'aws-sdk-sagemakertrainingsessionruntime/paginators'
require_relative 'aws-sdk-sagemakertrainingsessionruntime/schema'
require_relative 'aws-sdk-sagemakertrainingsessionruntime/auth_parameters'
require_relative 'aws-sdk-sagemakertrainingsessionruntime/auth_resolver'
require_relative 'aws-sdk-sagemakertrainingsessionruntime/client'
require_relative 'aws-sdk-sagemakertrainingsessionruntime/errors'
require_relative 'aws-sdk-sagemakertrainingsessionruntime/endpoint_parameters'
require_relative 'aws-sdk-sagemakertrainingsessionruntime/endpoint_provider'
require_relative 'aws-sdk-sagemakertrainingsessionruntime/waiters'
require_relative 'aws-sdk-sagemakertrainingsessionruntime/customizations'
