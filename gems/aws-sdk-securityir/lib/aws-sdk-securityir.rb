# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SecurityIR', Module.new) unless Aws.const_defined?('SecurityIR')

# @title Security Incident Response
# <p>This guide documents the action and response elements for use of the service.</p>
module Aws::SecurityIR
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-securityir/types'
require_relative 'aws-sdk-securityir/paginators'
require_relative 'aws-sdk-securityir/schema'
require_relative 'aws-sdk-securityir/auth_parameters'
require_relative 'aws-sdk-securityir/auth_resolver'
require_relative 'aws-sdk-securityir/client'
require_relative 'aws-sdk-securityir/customizations'
require_relative 'aws-sdk-securityir/errors'
require_relative 'aws-sdk-securityir/endpoint_parameters'
require_relative 'aws-sdk-securityir/endpoint_provider'
require_relative 'aws-sdk-securityir/waiters'
