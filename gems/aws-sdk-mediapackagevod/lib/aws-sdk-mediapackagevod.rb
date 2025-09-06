# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MediaPackageVod', Module.new) unless Aws.const_defined?('MediaPackageVod')

# @title AWS Elemental MediaPackage VOD
# AWS Elemental MediaPackage VOD
module Aws::MediaPackageVod
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mediapackagevod/types'
require_relative 'aws-sdk-mediapackagevod/paginators'
require_relative 'aws-sdk-mediapackagevod/schema'
require_relative 'aws-sdk-mediapackagevod/auth_parameters'
require_relative 'aws-sdk-mediapackagevod/auth_resolver'
require_relative 'aws-sdk-mediapackagevod/client'
require_relative 'aws-sdk-mediapackagevod/customizations'
require_relative 'aws-sdk-mediapackagevod/errors'
require_relative 'aws-sdk-mediapackagevod/endpoint_parameters'
require_relative 'aws-sdk-mediapackagevod/endpoint_provider'
require_relative 'aws-sdk-mediapackagevod/waiters'
