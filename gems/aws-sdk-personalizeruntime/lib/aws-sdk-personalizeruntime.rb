# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PersonalizeRuntime', Module.new) unless Aws.const_defined?('PersonalizeRuntime')

# @title Amazon Personalize Runtime
# <p></p>
module Aws::PersonalizeRuntime
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-personalizeruntime/types'
require_relative 'aws-sdk-personalizeruntime/paginators'
require_relative 'aws-sdk-personalizeruntime/schema'
require_relative 'aws-sdk-personalizeruntime/auth_parameters'
require_relative 'aws-sdk-personalizeruntime/auth_resolver'
require_relative 'aws-sdk-personalizeruntime/client'
require_relative 'aws-sdk-personalizeruntime/customizations'
require_relative 'aws-sdk-personalizeruntime/errors'
require_relative 'aws-sdk-personalizeruntime/endpoint_parameters'
require_relative 'aws-sdk-personalizeruntime/endpoint_provider'
require_relative 'aws-sdk-personalizeruntime/waiters'
