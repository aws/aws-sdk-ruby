# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Schemas', Module.new) unless Aws.const_defined?('Schemas')

# @title Schemas
# <p>Amazon EventBridge Schema Registry</p>
module Aws::Schemas
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-schemas/types'
require_relative 'aws-sdk-schemas/paginators'
require_relative 'aws-sdk-schemas/schema'
require_relative 'aws-sdk-schemas/auth_parameters'
require_relative 'aws-sdk-schemas/auth_resolver'
require_relative 'aws-sdk-schemas/client'
require_relative 'aws-sdk-schemas/customizations'
require_relative 'aws-sdk-schemas/errors'
require_relative 'aws-sdk-schemas/endpoint_parameters'
require_relative 'aws-sdk-schemas/endpoint_provider'
require_relative 'aws-sdk-schemas/waiters'
