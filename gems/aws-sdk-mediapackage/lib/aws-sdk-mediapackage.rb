# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MediaPackage', Module.new) unless Aws.const_defined?('MediaPackage')

# @title AWS Elemental MediaPackage
# AWS Elemental MediaPackage
module Aws::MediaPackage
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mediapackage/types'
require_relative 'aws-sdk-mediapackage/paginators'
require_relative 'aws-sdk-mediapackage/schema'
require_relative 'aws-sdk-mediapackage/auth_parameters'
require_relative 'aws-sdk-mediapackage/auth_resolver'
require_relative 'aws-sdk-mediapackage/client'
require_relative 'aws-sdk-mediapackage/customizations'
require_relative 'aws-sdk-mediapackage/errors'
require_relative 'aws-sdk-mediapackage/endpoint_parameters'
require_relative 'aws-sdk-mediapackage/endpoint_provider'
require_relative 'aws-sdk-mediapackage/waiters'
