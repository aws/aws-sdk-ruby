# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AccountAccess', Module.new) unless Aws.const_defined?('AccountAccess')

# @title Account Access
# <p>Account access manager enables you to manage applications and entitlements that grant IAM Identity Center principals access to IAM roles across accounts.</p>
module Aws::AccountAccess
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-accountaccess/types'
require_relative 'aws-sdk-accountaccess/paginators'
require_relative 'aws-sdk-accountaccess/schema'
require_relative 'aws-sdk-accountaccess/auth_parameters'
require_relative 'aws-sdk-accountaccess/auth_resolver'
require_relative 'aws-sdk-accountaccess/client'
require_relative 'aws-sdk-accountaccess/errors'
require_relative 'aws-sdk-accountaccess/endpoint_parameters'
require_relative 'aws-sdk-accountaccess/endpoint_provider'
require_relative 'aws-sdk-accountaccess/waiters'
require_relative 'aws-sdk-accountaccess/customizations'
