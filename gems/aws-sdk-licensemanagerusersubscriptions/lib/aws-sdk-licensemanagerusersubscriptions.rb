# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LicenseManagerUserSubscriptions', Module.new) unless Aws.const_defined?('LicenseManagerUserSubscriptions')

# @title AWS License Manager User Subscriptions
# <p>With License Manager, you can create user-based subscriptions to utilize licensed software with a per user subscription fee on Amazon EC2 instances.</p>
module Aws::LicenseManagerUserSubscriptions
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-licensemanagerusersubscriptions/types'
require_relative 'aws-sdk-licensemanagerusersubscriptions/paginators'
require_relative 'aws-sdk-licensemanagerusersubscriptions/schema'
require_relative 'aws-sdk-licensemanagerusersubscriptions/auth_parameters'
require_relative 'aws-sdk-licensemanagerusersubscriptions/auth_resolver'
require_relative 'aws-sdk-licensemanagerusersubscriptions/client'
require_relative 'aws-sdk-licensemanagerusersubscriptions/errors'
require_relative 'aws-sdk-licensemanagerusersubscriptions/endpoint_parameters'
require_relative 'aws-sdk-licensemanagerusersubscriptions/endpoint_provider'
require_relative 'aws-sdk-licensemanagerusersubscriptions/waiters'
require_relative 'aws-sdk-licensemanagerusersubscriptions/customizations'
