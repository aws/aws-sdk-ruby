# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SupportAuthZ', Module.new) unless Aws.const_defined?('SupportAuthZ')

# @title SupportAuthZ
# <fullname>AWS Support Authorization</fullname> <p>AWS SupportAuthZ enables you to control and authorize the actions that AWS support operators can perform on your resources. You create cryptographically signed support permits specifying which actions operators can perform, on which resources, and under what time-window conditions. Permits are signed using a customer-managed AWS KMS key (ECC_NIST_P384, SIGN_VERIFY) to ensure non-repudiation.</p>
module Aws::SupportAuthZ
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-supportauthz/types'
require_relative 'aws-sdk-supportauthz/paginators'
require_relative 'aws-sdk-supportauthz/schema'
require_relative 'aws-sdk-supportauthz/auth_parameters'
require_relative 'aws-sdk-supportauthz/auth_resolver'
require_relative 'aws-sdk-supportauthz/client'
require_relative 'aws-sdk-supportauthz/errors'
require_relative 'aws-sdk-supportauthz/endpoint_parameters'
require_relative 'aws-sdk-supportauthz/endpoint_provider'
require_relative 'aws-sdk-supportauthz/waiters'
require_relative 'aws-sdk-supportauthz/customizations'
