# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Route53RecoveryReadiness', Module.new) unless Aws.const_defined?('Route53RecoveryReadiness')

# @title AWS Route53 Recovery Readiness
# <p>Recovery readiness</p>
module Aws::Route53RecoveryReadiness
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-route53recoveryreadiness/types'
require_relative 'aws-sdk-route53recoveryreadiness/paginators'
require_relative 'aws-sdk-route53recoveryreadiness/schema'
require_relative 'aws-sdk-route53recoveryreadiness/auth_parameters'
require_relative 'aws-sdk-route53recoveryreadiness/auth_resolver'
require_relative 'aws-sdk-route53recoveryreadiness/client'
require_relative 'aws-sdk-route53recoveryreadiness/errors'
require_relative 'aws-sdk-route53recoveryreadiness/endpoint_parameters'
require_relative 'aws-sdk-route53recoveryreadiness/endpoint_provider'
require_relative 'aws-sdk-route53recoveryreadiness/waiters'
require_relative 'aws-sdk-route53recoveryreadiness/customizations'
