# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SageMakerRuntimeHTTP2', Module.new) unless Aws.const_defined?('SageMakerRuntimeHTTP2')

# @title Amazon SageMaker Runtime HTTP2
# <p> The Amazon SageMaker AI runtime HTTP/2 API. </p>
module Aws::SageMakerRuntimeHTTP2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sagemakerruntimehttp2/types'
require_relative 'aws-sdk-sagemakerruntimehttp2/paginators'
require_relative 'aws-sdk-sagemakerruntimehttp2/schema'
require_relative 'aws-sdk-sagemakerruntimehttp2/auth_parameters'
require_relative 'aws-sdk-sagemakerruntimehttp2/auth_resolver'
require_relative 'aws-sdk-sagemakerruntimehttp2/client'
require_relative 'aws-sdk-sagemakerruntimehttp2/errors'
require_relative 'aws-sdk-sagemakerruntimehttp2/endpoint_parameters'
require_relative 'aws-sdk-sagemakerruntimehttp2/endpoint_provider'
require_relative 'aws-sdk-sagemakerruntimehttp2/waiters'
require_relative 'aws-sdk-sagemakerruntimehttp2/customizations'
