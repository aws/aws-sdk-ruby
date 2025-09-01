# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Kendra', Module.new) unless Aws.const_defined?('Kendra')

# @title AWSKendraFrontendService
# <p>Amazon Kendra is a service for indexing large document sets.</p>
module Aws::Kendra
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-kendra/types'
require_relative 'aws-sdk-kendra/paginators'
require_relative 'aws-sdk-kendra/schema'
require_relative 'aws-sdk-kendra/auth_parameters'
require_relative 'aws-sdk-kendra/auth_resolver'
require_relative 'aws-sdk-kendra/client'
require_relative 'aws-sdk-kendra/customizations'
require_relative 'aws-sdk-kendra/errors'
require_relative 'aws-sdk-kendra/endpoint_parameters'
require_relative 'aws-sdk-kendra/endpoint_provider'
require_relative 'aws-sdk-kendra/waiters'
