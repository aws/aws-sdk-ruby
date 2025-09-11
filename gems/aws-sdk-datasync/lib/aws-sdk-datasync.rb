# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DataSync', Module.new) unless Aws.const_defined?('DataSync')

# @title AWS DataSync
# <fullname>DataSync</fullname>
#          <p>DataSync is an online data movement service that simplifies data
#       migration and helps you quickly, easily, and securely transfer your file or object data to,
#       from, and between Amazon Web Services storage services.</p>
#          <p>This API interface reference includes documentation for using DataSync
#       programmatically. For complete information, see the <i>
#                <a href="https://docs.aws.amazon.com/datasync/latest/userguide/what-is-datasync.html">DataSync User
#           Guide</a>
#             </i>.</p>
module Aws::DataSync
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-datasync/types'
require_relative 'aws-sdk-datasync/paginators'
require_relative 'aws-sdk-datasync/schema'
require_relative 'aws-sdk-datasync/auth_parameters'
require_relative 'aws-sdk-datasync/auth_resolver'
require_relative 'aws-sdk-datasync/client'
require_relative 'aws-sdk-datasync/customizations'
require_relative 'aws-sdk-datasync/errors'
require_relative 'aws-sdk-datasync/endpoint_parameters'
require_relative 'aws-sdk-datasync/endpoint_provider'
require_relative 'aws-sdk-datasync/waiters'
