# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('XRay', Module.new) unless Aws.const_defined?('XRay')

# @title AWS X-Ray
# <p>Amazon Web Services X-Ray provides APIs for managing debug traces and retrieving service maps
#       and other data created by processing those traces.</p>
module Aws::XRay
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-xray/types'
require_relative 'aws-sdk-xray/paginators'
require_relative 'aws-sdk-xray/schema'
require_relative 'aws-sdk-xray/auth_parameters'
require_relative 'aws-sdk-xray/auth_resolver'
require_relative 'aws-sdk-xray/client'
require_relative 'aws-sdk-xray/customizations'
require_relative 'aws-sdk-xray/errors'
require_relative 'aws-sdk-xray/endpoint_parameters'
require_relative 'aws-sdk-xray/endpoint_provider'
require_relative 'aws-sdk-xray/waiters'
