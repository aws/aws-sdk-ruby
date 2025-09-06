# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Account', Module.new) unless Aws.const_defined?('Account')

# @title AWS Account
# <p>Operations for Amazon Web Services Account Management</p>
module Aws::Account
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-account/types'
require_relative 'aws-sdk-account/paginators'
require_relative 'aws-sdk-account/schema'
require_relative 'aws-sdk-account/auth_parameters'
require_relative 'aws-sdk-account/auth_resolver'
require_relative 'aws-sdk-account/client'
require_relative 'aws-sdk-account/customizations'
require_relative 'aws-sdk-account/errors'
require_relative 'aws-sdk-account/endpoint_parameters'
require_relative 'aws-sdk-account/endpoint_provider'
require_relative 'aws-sdk-account/waiters'
