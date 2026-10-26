# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LambdaMicrovms', Module.new) unless Aws.const_defined?('LambdaMicrovms')

# @title Lambda MicroVMs
# <p>Provides APIs to create, manage, and operate AWS Lambda MicroVMs and their associated MicroVM Image environments.</p>
module Aws::LambdaMicrovms
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-lambdamicrovms/types'
require_relative 'aws-sdk-lambdamicrovms/paginators'
require_relative 'aws-sdk-lambdamicrovms/schema'
require_relative 'aws-sdk-lambdamicrovms/auth_parameters'
require_relative 'aws-sdk-lambdamicrovms/auth_resolver'
require_relative 'aws-sdk-lambdamicrovms/client'
require_relative 'aws-sdk-lambdamicrovms/errors'
require_relative 'aws-sdk-lambdamicrovms/endpoint_parameters'
require_relative 'aws-sdk-lambdamicrovms/endpoint_provider'
require_relative 'aws-sdk-lambdamicrovms/waiters'
require_relative 'aws-sdk-lambdamicrovms/customizations'
