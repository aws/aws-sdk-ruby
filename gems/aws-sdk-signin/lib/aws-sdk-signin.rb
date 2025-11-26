# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Signin', Module.new) unless Aws.const_defined?('Signin')

# @title AWS Sign-In Service
# AWS Sign-In manages authentication for AWS services. This service provides
# secure authentication flows for accessing AWS resources from the console and developer tools.
module Aws::Signin
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-signin/types'
require_relative 'aws-sdk-signin/paginators'
require_relative 'aws-sdk-signin/schema'
require_relative 'aws-sdk-signin/auth_parameters'
require_relative 'aws-sdk-signin/auth_resolver'
require_relative 'aws-sdk-signin/client'
require_relative 'aws-sdk-signin/errors'
require_relative 'aws-sdk-signin/endpoint_parameters'
require_relative 'aws-sdk-signin/endpoint_provider'
require_relative 'aws-sdk-signin/waiters'
require_relative 'aws-sdk-signin/customizations'
