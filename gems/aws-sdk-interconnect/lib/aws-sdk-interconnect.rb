# frozen_string_literal: true

# This is generated code!

require 'smithy-cbor'
require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Interconnect', Module.new) unless Aws.const_defined?('Interconnect')

# @title Interconnect
# <p>Provides managed connections between your AWS network resources and select partner network resources.</p>
module Aws::Interconnect
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-interconnect/types'
require_relative 'aws-sdk-interconnect/paginators'
require_relative 'aws-sdk-interconnect/schema'
require_relative 'aws-sdk-interconnect/auth_parameters'
require_relative 'aws-sdk-interconnect/auth_resolver'
require_relative 'aws-sdk-interconnect/client'
require_relative 'aws-sdk-interconnect/errors'
require_relative 'aws-sdk-interconnect/endpoint_parameters'
require_relative 'aws-sdk-interconnect/endpoint_provider'
require_relative 'aws-sdk-interconnect/waiters'
require_relative 'aws-sdk-interconnect/customizations'
