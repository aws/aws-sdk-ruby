# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Finspace', Module.new) unless Aws.const_defined?('Finspace')

# @title FinSpace User Environment Management service
# <p>The FinSpace management service provides the APIs for managing FinSpace environments.</p>
module Aws::Finspace
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-finspace/types'
require_relative 'aws-sdk-finspace/paginators'
require_relative 'aws-sdk-finspace/schema'
require_relative 'aws-sdk-finspace/auth_parameters'
require_relative 'aws-sdk-finspace/auth_resolver'
require_relative 'aws-sdk-finspace/client'
require_relative 'aws-sdk-finspace/customizations'
require_relative 'aws-sdk-finspace/errors'
require_relative 'aws-sdk-finspace/endpoint_parameters'
require_relative 'aws-sdk-finspace/endpoint_provider'
require_relative 'aws-sdk-finspace/waiters'
