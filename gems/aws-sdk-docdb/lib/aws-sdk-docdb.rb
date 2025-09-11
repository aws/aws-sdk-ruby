# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-xml'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DocDB', Module.new) unless Aws.const_defined?('DocDB')

# @title Amazon DocumentDB with MongoDB compatibility
# <p>Amazon DocumentDB is a fast, reliable, and fully managed database service. 
#          Amazon DocumentDB makes it easy to set up, operate, and scale MongoDB-compatible databases in the cloud. 
#          With Amazon DocumentDB, you can run the same application code and use the same drivers and tools that you use with MongoDB.</p>
module Aws::DocDB
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-docdb/types'
require_relative 'aws-sdk-docdb/paginators'
require_relative 'aws-sdk-docdb/schema'
require_relative 'aws-sdk-docdb/auth_parameters'
require_relative 'aws-sdk-docdb/auth_resolver'
require_relative 'aws-sdk-docdb/client'
require_relative 'aws-sdk-docdb/customizations'
require_relative 'aws-sdk-docdb/errors'
require_relative 'aws-sdk-docdb/endpoint_parameters'
require_relative 'aws-sdk-docdb/endpoint_provider'
require_relative 'aws-sdk-docdb/waiters'
