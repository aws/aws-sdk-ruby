# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Route53Domains', Module.new) unless Aws.const_defined?('Route53Domains')

# @title Amazon Route 53 Domains
# <p>Amazon Route 53 API actions let you register domain names and perform related
# 			operations.</p>
module Aws::Route53Domains
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-route53domains/types'
require_relative 'aws-sdk-route53domains/paginators'
require_relative 'aws-sdk-route53domains/schema'
require_relative 'aws-sdk-route53domains/auth_parameters'
require_relative 'aws-sdk-route53domains/auth_resolver'
require_relative 'aws-sdk-route53domains/client'
require_relative 'aws-sdk-route53domains/customizations'
require_relative 'aws-sdk-route53domains/errors'
require_relative 'aws-sdk-route53domains/endpoint_parameters'
require_relative 'aws-sdk-route53domains/endpoint_provider'
require_relative 'aws-sdk-route53domains/waiters'
