# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Billing', Module.new) unless Aws.const_defined?('Billing')

# @title AWS Billing
# <p> You can use the Billing API to programatically list the billing views available to you for a given time period. A billing view represents a set of billing data. </p> <p>The Billing API provides the following endpoint:</p> <p> <code>https://billing.us-east-1.api.aws</code> </p>
module Aws::Billing
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-billing/types'
require_relative 'aws-sdk-billing/paginators'
require_relative 'aws-sdk-billing/schema'
require_relative 'aws-sdk-billing/auth_parameters'
require_relative 'aws-sdk-billing/auth_resolver'
require_relative 'aws-sdk-billing/client'
require_relative 'aws-sdk-billing/customizations'
require_relative 'aws-sdk-billing/errors'
require_relative 'aws-sdk-billing/endpoint_parameters'
require_relative 'aws-sdk-billing/endpoint_provider'
require_relative 'aws-sdk-billing/waiters'
