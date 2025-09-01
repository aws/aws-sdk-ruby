# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Finspacedata', Module.new) unless Aws.const_defined?('Finspacedata')

# @title FinSpace Public API
# <p> The FinSpace APIs let you take actions inside the FinSpace.</p>
module Aws::Finspacedata
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-finspacedata/types'
require_relative 'aws-sdk-finspacedata/paginators'
require_relative 'aws-sdk-finspacedata/schema'
require_relative 'aws-sdk-finspacedata/auth_parameters'
require_relative 'aws-sdk-finspacedata/auth_resolver'
require_relative 'aws-sdk-finspacedata/client'
require_relative 'aws-sdk-finspacedata/customizations'
require_relative 'aws-sdk-finspacedata/errors'
require_relative 'aws-sdk-finspacedata/endpoint_parameters'
require_relative 'aws-sdk-finspacedata/endpoint_provider'
require_relative 'aws-sdk-finspacedata/waiters'
