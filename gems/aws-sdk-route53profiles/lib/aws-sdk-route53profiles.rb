# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Route53Profiles', Module.new) unless Aws.const_defined?('Route53Profiles')

# @title Route 53 Profiles
# <p>
#  With Amazon Route 53 Profiles you can share Route 53 configurations with VPCs and AWS accounts
# </p>
module Aws::Route53Profiles
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-route53profiles/types'
require_relative 'aws-sdk-route53profiles/paginators'
require_relative 'aws-sdk-route53profiles/schema'
require_relative 'aws-sdk-route53profiles/auth_parameters'
require_relative 'aws-sdk-route53profiles/auth_resolver'
require_relative 'aws-sdk-route53profiles/client'
require_relative 'aws-sdk-route53profiles/customizations'
require_relative 'aws-sdk-route53profiles/errors'
require_relative 'aws-sdk-route53profiles/endpoint_parameters'
require_relative 'aws-sdk-route53profiles/endpoint_provider'
require_relative 'aws-sdk-route53profiles/waiters'
