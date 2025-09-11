# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ResourceGroupsTaggingAPI', Module.new) unless Aws.const_defined?('ResourceGroupsTaggingAPI')

# @title AWS Resource Groups Tagging API
# <fullname>Resource Groups Tagging API</fullname>
module Aws::ResourceGroupsTaggingAPI
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-resourcegroupstaggingapi/types'
require_relative 'aws-sdk-resourcegroupstaggingapi/paginators'
require_relative 'aws-sdk-resourcegroupstaggingapi/schema'
require_relative 'aws-sdk-resourcegroupstaggingapi/auth_parameters'
require_relative 'aws-sdk-resourcegroupstaggingapi/auth_resolver'
require_relative 'aws-sdk-resourcegroupstaggingapi/client'
require_relative 'aws-sdk-resourcegroupstaggingapi/customizations'
require_relative 'aws-sdk-resourcegroupstaggingapi/errors'
require_relative 'aws-sdk-resourcegroupstaggingapi/endpoint_parameters'
require_relative 'aws-sdk-resourcegroupstaggingapi/endpoint_provider'
require_relative 'aws-sdk-resourcegroupstaggingapi/waiters'
