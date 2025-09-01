# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Mgn', Module.new) unless Aws.const_defined?('Mgn')

# @title Application Migration Service
# <p>The Application Migration Service service.</p>
module Aws::Mgn
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mgn/types'
require_relative 'aws-sdk-mgn/paginators'
require_relative 'aws-sdk-mgn/schema'
require_relative 'aws-sdk-mgn/auth_parameters'
require_relative 'aws-sdk-mgn/auth_resolver'
require_relative 'aws-sdk-mgn/client'
require_relative 'aws-sdk-mgn/customizations'
require_relative 'aws-sdk-mgn/errors'
require_relative 'aws-sdk-mgn/endpoint_parameters'
require_relative 'aws-sdk-mgn/endpoint_provider'
require_relative 'aws-sdk-mgn/waiters'
