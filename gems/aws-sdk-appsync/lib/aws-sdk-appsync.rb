# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AppSync', Module.new) unless Aws.const_defined?('AppSync')

# @title AWS AppSync
# <p>AppSync provides API actions for creating and interacting with data
#          sources using GraphQL from your application.</p>
module Aws::AppSync
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-appsync/types'
require_relative 'aws-sdk-appsync/paginators'
require_relative 'aws-sdk-appsync/schema'
require_relative 'aws-sdk-appsync/auth_parameters'
require_relative 'aws-sdk-appsync/auth_resolver'
require_relative 'aws-sdk-appsync/client'
require_relative 'aws-sdk-appsync/customizations'
require_relative 'aws-sdk-appsync/errors'
require_relative 'aws-sdk-appsync/endpoint_parameters'
require_relative 'aws-sdk-appsync/endpoint_provider'
require_relative 'aws-sdk-appsync/waiters'
