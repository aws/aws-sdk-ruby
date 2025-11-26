# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Route53RecoveryControlConfig', Module.new) unless Aws.const_defined?('Route53RecoveryControlConfig')

# @title AWS Route53 Recovery Control Config
# <p>Recovery Control Configuration API Reference for Amazon Route 53 Application Recovery Controller</p>
module Aws::Route53RecoveryControlConfig
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-route53recoverycontrolconfig/types'
require_relative 'aws-sdk-route53recoverycontrolconfig/paginators'
require_relative 'aws-sdk-route53recoverycontrolconfig/schema'
require_relative 'aws-sdk-route53recoverycontrolconfig/auth_parameters'
require_relative 'aws-sdk-route53recoverycontrolconfig/auth_resolver'
require_relative 'aws-sdk-route53recoverycontrolconfig/client'
require_relative 'aws-sdk-route53recoverycontrolconfig/errors'
require_relative 'aws-sdk-route53recoverycontrolconfig/endpoint_parameters'
require_relative 'aws-sdk-route53recoverycontrolconfig/endpoint_provider'
require_relative 'aws-sdk-route53recoverycontrolconfig/waiters'
require_relative 'aws-sdk-route53recoverycontrolconfig/customizations'
