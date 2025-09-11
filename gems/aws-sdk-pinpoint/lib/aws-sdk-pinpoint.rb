# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Pinpoint', Module.new) unless Aws.const_defined?('Pinpoint')

# @title Amazon Pinpoint
# <p>Doc Engage API - Amazon Pinpoint API</p>
module Aws::Pinpoint
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-pinpoint/types'
require_relative 'aws-sdk-pinpoint/paginators'
require_relative 'aws-sdk-pinpoint/schema'
require_relative 'aws-sdk-pinpoint/auth_parameters'
require_relative 'aws-sdk-pinpoint/auth_resolver'
require_relative 'aws-sdk-pinpoint/client'
require_relative 'aws-sdk-pinpoint/customizations'
require_relative 'aws-sdk-pinpoint/errors'
require_relative 'aws-sdk-pinpoint/endpoint_parameters'
require_relative 'aws-sdk-pinpoint/endpoint_provider'
require_relative 'aws-sdk-pinpoint/waiters'
