# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Bedrock', Module.new) unless Aws.const_defined?('Bedrock')

# @title Amazon Bedrock
# <p>Describes the API operations for creating, managing, fine-turning, and evaluating Amazon Bedrock models.</p>
module Aws::Bedrock
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bedrock/types'
require_relative 'aws-sdk-bedrock/paginators'
require_relative 'aws-sdk-bedrock/schema'
require_relative 'aws-sdk-bedrock/auth_parameters'
require_relative 'aws-sdk-bedrock/auth_resolver'
require_relative 'aws-sdk-bedrock/client'
require_relative 'aws-sdk-bedrock/customizations'
require_relative 'aws-sdk-bedrock/errors'
require_relative 'aws-sdk-bedrock/endpoint_parameters'
require_relative 'aws-sdk-bedrock/endpoint_provider'
require_relative 'aws-sdk-bedrock/waiters'
