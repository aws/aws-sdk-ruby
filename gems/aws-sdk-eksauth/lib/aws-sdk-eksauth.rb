# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('EKSAuth', Module.new) unless Aws.const_defined?('EKSAuth')

# @title Amazon EKS Auth
# <p>The Amazon EKS Auth API and the <code>AssumeRoleForPodIdentity</code> action are only
#             used by the EKS Pod Identity Agent.</p>
module Aws::EKSAuth
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-eksauth/types'
require_relative 'aws-sdk-eksauth/paginators'
require_relative 'aws-sdk-eksauth/schema'
require_relative 'aws-sdk-eksauth/auth_parameters'
require_relative 'aws-sdk-eksauth/auth_resolver'
require_relative 'aws-sdk-eksauth/client'
require_relative 'aws-sdk-eksauth/customizations'
require_relative 'aws-sdk-eksauth/errors'
require_relative 'aws-sdk-eksauth/endpoint_parameters'
require_relative 'aws-sdk-eksauth/endpoint_provider'
require_relative 'aws-sdk-eksauth/waiters'
