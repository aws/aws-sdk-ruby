# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SSMQuickSetup', Module.new) unless Aws.const_defined?('SSMQuickSetup')

# @title AWS Systems Manager QuickSetup
# <p>Quick Setup helps you quickly configure frequently used services and features with
#                   recommended best practices. Quick Setup simplifies setting up services, including
#                         Systems Manager, by automating common or recommended tasks.</p>
module Aws::SSMQuickSetup
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ssmquicksetup/types'
require_relative 'aws-sdk-ssmquicksetup/paginators'
require_relative 'aws-sdk-ssmquicksetup/schema'
require_relative 'aws-sdk-ssmquicksetup/auth_parameters'
require_relative 'aws-sdk-ssmquicksetup/auth_resolver'
require_relative 'aws-sdk-ssmquicksetup/client'
require_relative 'aws-sdk-ssmquicksetup/errors'
require_relative 'aws-sdk-ssmquicksetup/endpoint_parameters'
require_relative 'aws-sdk-ssmquicksetup/endpoint_provider'
require_relative 'aws-sdk-ssmquicksetup/waiters'
require_relative 'aws-sdk-ssmquicksetup/customizations'
