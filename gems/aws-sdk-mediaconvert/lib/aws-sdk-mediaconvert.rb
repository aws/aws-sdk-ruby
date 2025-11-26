# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MediaConvert', Module.new) unless Aws.const_defined?('MediaConvert')

# @title AWS Elemental MediaConvert
# AWS Elemental MediaConvert
module Aws::MediaConvert
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mediaconvert/types'
require_relative 'aws-sdk-mediaconvert/paginators'
require_relative 'aws-sdk-mediaconvert/schema'
require_relative 'aws-sdk-mediaconvert/auth_parameters'
require_relative 'aws-sdk-mediaconvert/auth_resolver'
require_relative 'aws-sdk-mediaconvert/client'
require_relative 'aws-sdk-mediaconvert/errors'
require_relative 'aws-sdk-mediaconvert/endpoint_parameters'
require_relative 'aws-sdk-mediaconvert/endpoint_provider'
require_relative 'aws-sdk-mediaconvert/waiters'
require_relative 'aws-sdk-mediaconvert/customizations'
