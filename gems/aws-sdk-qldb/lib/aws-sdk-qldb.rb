# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('QLDB', Module.new) unless Aws.const_defined?('QLDB')

# @title Amazon QLDB
# <p>The resource management API for Amazon QLDB</p>
module Aws::QLDB
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-qldb/types'
require_relative 'aws-sdk-qldb/paginators'
require_relative 'aws-sdk-qldb/schema'
require_relative 'aws-sdk-qldb/auth_parameters'
require_relative 'aws-sdk-qldb/auth_resolver'
require_relative 'aws-sdk-qldb/client'
require_relative 'aws-sdk-qldb/customizations'
require_relative 'aws-sdk-qldb/errors'
require_relative 'aws-sdk-qldb/endpoint_parameters'
require_relative 'aws-sdk-qldb/endpoint_provider'
require_relative 'aws-sdk-qldb/waiters'
