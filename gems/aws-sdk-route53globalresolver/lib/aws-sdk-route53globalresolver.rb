# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Route53GlobalResolver', Module.new) unless Aws.const_defined?('Route53GlobalResolver')

# @title Amazon Route 53 Global Resolver
# <p>Amazon Route 53 Global Resolver is a global, internet-accessible DNS resolver that enables customers to resolve and forward traffic for both public and private domains while ensuring security and authenticity of queries over the internet. Route 53 Global Resolver supports DNS-over-port 53 (Do53), DNS-over-TLS (DoT), and DNS-over-HTTPS (DoH) protocols through global anycast IP addresses.</p> <important> <p>Route 53 Global Resolver is a global service that supports resolvers in multiple Amazon Web Services Regions but you must specify the US East (Ohio) Region to create, update, or otherwise work with Route 53 Global Resolver resources. That is, for example, specify <code>--region us-east-2</code> on Amazon Web Services CLI commands.</p> </important>
module Aws::Route53GlobalResolver
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-route53globalresolver/types'
require_relative 'aws-sdk-route53globalresolver/paginators'
require_relative 'aws-sdk-route53globalresolver/schema'
require_relative 'aws-sdk-route53globalresolver/auth_parameters'
require_relative 'aws-sdk-route53globalresolver/auth_resolver'
require_relative 'aws-sdk-route53globalresolver/client'
require_relative 'aws-sdk-route53globalresolver/errors'
require_relative 'aws-sdk-route53globalresolver/endpoint_parameters'
require_relative 'aws-sdk-route53globalresolver/endpoint_provider'
require_relative 'aws-sdk-route53globalresolver/waiters'
require_relative 'aws-sdk-route53globalresolver/customizations'
