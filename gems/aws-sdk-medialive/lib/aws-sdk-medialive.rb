# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MediaLive', Module.new) unless Aws.const_defined?('MediaLive')

# @title AWS Elemental MediaLive
# API for AWS Elemental MediaLive
module Aws::MediaLive
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-medialive/types'
require_relative 'aws-sdk-medialive/paginators'
require_relative 'aws-sdk-medialive/schema'
require_relative 'aws-sdk-medialive/auth_parameters'
require_relative 'aws-sdk-medialive/auth_resolver'
require_relative 'aws-sdk-medialive/client'
require_relative 'aws-sdk-medialive/customizations'
require_relative 'aws-sdk-medialive/errors'
require_relative 'aws-sdk-medialive/endpoint_parameters'
require_relative 'aws-sdk-medialive/endpoint_provider'
require_relative 'aws-sdk-medialive/waiters'
