# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LicenseManager', Module.new) unless Aws.const_defined?('LicenseManager')

# @title AWS License Manager
# <p>License Manager makes it easier to manage licenses from software vendors across multiple 
#          Amazon Web Services accounts and on-premises servers.</p>
module Aws::LicenseManager
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-licensemanager/types'
require_relative 'aws-sdk-licensemanager/paginators'
require_relative 'aws-sdk-licensemanager/schema'
require_relative 'aws-sdk-licensemanager/auth_parameters'
require_relative 'aws-sdk-licensemanager/auth_resolver'
require_relative 'aws-sdk-licensemanager/client'
require_relative 'aws-sdk-licensemanager/customizations'
require_relative 'aws-sdk-licensemanager/errors'
require_relative 'aws-sdk-licensemanager/endpoint_parameters'
require_relative 'aws-sdk-licensemanager/endpoint_provider'
require_relative 'aws-sdk-licensemanager/waiters'
