# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AmplifyBackend', Module.new) unless Aws.const_defined?('AmplifyBackend')

# @title AmplifyBackend
# <p>AWS Amplify Admin API</p>
module Aws::AmplifyBackend
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-amplifybackend/types'
require_relative 'aws-sdk-amplifybackend/paginators'
require_relative 'aws-sdk-amplifybackend/schema'
require_relative 'aws-sdk-amplifybackend/auth_parameters'
require_relative 'aws-sdk-amplifybackend/auth_resolver'
require_relative 'aws-sdk-amplifybackend/client'
require_relative 'aws-sdk-amplifybackend/customizations'
require_relative 'aws-sdk-amplifybackend/errors'
require_relative 'aws-sdk-amplifybackend/endpoint_parameters'
require_relative 'aws-sdk-amplifybackend/endpoint_provider'
require_relative 'aws-sdk-amplifybackend/waiters'
