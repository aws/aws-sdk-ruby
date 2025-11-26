# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('TimestreamQuery', Module.new) unless Aws.const_defined?('TimestreamQuery')

# @title Amazon Timestream Query
# <fullname>Amazon Timestream Query
#         </fullname>
#          <p></p>
module Aws::TimestreamQuery
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-timestreamquery/types'
require_relative 'aws-sdk-timestreamquery/paginators'
require_relative 'aws-sdk-timestreamquery/schema'
require_relative 'aws-sdk-timestreamquery/auth_parameters'
require_relative 'aws-sdk-timestreamquery/auth_resolver'
require_relative 'aws-sdk-timestreamquery/client'
require_relative 'aws-sdk-timestreamquery/errors'
require_relative 'aws-sdk-timestreamquery/endpoint_parameters'
require_relative 'aws-sdk-timestreamquery/endpoint_provider'
require_relative 'aws-sdk-timestreamquery/waiters'
require_relative 'aws-sdk-timestreamquery/customizations'
