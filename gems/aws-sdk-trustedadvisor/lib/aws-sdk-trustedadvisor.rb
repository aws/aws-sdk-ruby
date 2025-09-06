# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('TrustedAdvisor', Module.new) unless Aws.const_defined?('TrustedAdvisor')

# @title TrustedAdvisor Public API
# <p>TrustedAdvisor Public API</p>
module Aws::TrustedAdvisor
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-trustedadvisor/types'
require_relative 'aws-sdk-trustedadvisor/paginators'
require_relative 'aws-sdk-trustedadvisor/schema'
require_relative 'aws-sdk-trustedadvisor/auth_parameters'
require_relative 'aws-sdk-trustedadvisor/auth_resolver'
require_relative 'aws-sdk-trustedadvisor/client'
require_relative 'aws-sdk-trustedadvisor/customizations'
require_relative 'aws-sdk-trustedadvisor/errors'
require_relative 'aws-sdk-trustedadvisor/endpoint_parameters'
require_relative 'aws-sdk-trustedadvisor/endpoint_provider'
require_relative 'aws-sdk-trustedadvisor/waiters'
