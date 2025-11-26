# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudFrontKeyValueStore', Module.new) unless Aws.const_defined?('CloudFrontKeyValueStore')

# @title Amazon CloudFront KeyValueStore
# <p>Amazon CloudFront KeyValueStore Service to View and Update Data in a KVS Resource</p>
module Aws::CloudFrontKeyValueStore
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudfrontkeyvaluestore/types'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/paginators'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/schema'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/auth_parameters'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/auth_resolver'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/client'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/errors'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/endpoint_parameters'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/endpoint_provider'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/waiters'
require_relative 'aws-sdk-cloudfrontkeyvaluestore/customizations'
