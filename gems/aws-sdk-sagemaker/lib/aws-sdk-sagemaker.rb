# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SageMaker', Module.new) unless Aws.const_defined?('SageMaker')

# @title Amazon SageMaker Service
# <p>Provides APIs for creating and managing SageMaker resources. </p> <p>Other Resources:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html#first-time-user">SageMaker Developer Guide</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/augmented-ai/2019-11-07/APIReference/Welcome.html">Amazon Augmented AI Runtime API Reference</a> </p> </li> </ul>
module Aws::SageMaker
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sagemaker/types'
require_relative 'aws-sdk-sagemaker/paginators'
require_relative 'aws-sdk-sagemaker/schema'
require_relative 'aws-sdk-sagemaker/auth_parameters'
require_relative 'aws-sdk-sagemaker/auth_resolver'
require_relative 'aws-sdk-sagemaker/client'
require_relative 'aws-sdk-sagemaker/customizations'
require_relative 'aws-sdk-sagemaker/errors'
require_relative 'aws-sdk-sagemaker/endpoint_parameters'
require_relative 'aws-sdk-sagemaker/endpoint_provider'
require_relative 'aws-sdk-sagemaker/waiters'
