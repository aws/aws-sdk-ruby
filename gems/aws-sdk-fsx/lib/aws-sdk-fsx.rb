# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('FSx', Module.new) unless Aws.const_defined?('FSx')

# @title Amazon FSx
# <p>Amazon FSx is a fully managed service that makes it easy for storage and
#             application administrators to launch and use shared file storage.</p>
module Aws::FSx
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-fsx/types'
require_relative 'aws-sdk-fsx/paginators'
require_relative 'aws-sdk-fsx/schema'
require_relative 'aws-sdk-fsx/auth_parameters'
require_relative 'aws-sdk-fsx/auth_resolver'
require_relative 'aws-sdk-fsx/client'
require_relative 'aws-sdk-fsx/customizations'
require_relative 'aws-sdk-fsx/errors'
require_relative 'aws-sdk-fsx/endpoint_parameters'
require_relative 'aws-sdk-fsx/endpoint_provider'
require_relative 'aws-sdk-fsx/waiters'
