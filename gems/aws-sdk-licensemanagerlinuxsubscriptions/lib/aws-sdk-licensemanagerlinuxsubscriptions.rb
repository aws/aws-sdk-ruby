# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LicenseManagerLinuxSubscriptions', Module.new) unless Aws.const_defined?('LicenseManagerLinuxSubscriptions')

# @title AWS License Manager Linux Subscriptions
# <p>With License Manager, you can discover and track your commercial Linux subscriptions on running
#       Amazon EC2 instances.</p>
module Aws::LicenseManagerLinuxSubscriptions
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/types'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/paginators'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/schema'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/auth_parameters'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/auth_resolver'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/client'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/customizations'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/errors'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/endpoint_parameters'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/endpoint_provider'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/waiters'
