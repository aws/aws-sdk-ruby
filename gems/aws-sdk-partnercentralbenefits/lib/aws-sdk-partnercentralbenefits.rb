# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PartnerCentralBenefits', Module.new) unless Aws.const_defined?('PartnerCentralBenefits')

# @title Partner Central Benefits API
# <p>AWS Partner Central Benefits Service provides APIs for managing partner benefits, applications, and allocations within the AWS Partner Network ecosystem.</p>
module Aws::PartnerCentralBenefits
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-partnercentralbenefits/types'
require_relative 'aws-sdk-partnercentralbenefits/paginators'
require_relative 'aws-sdk-partnercentralbenefits/schema'
require_relative 'aws-sdk-partnercentralbenefits/auth_parameters'
require_relative 'aws-sdk-partnercentralbenefits/auth_resolver'
require_relative 'aws-sdk-partnercentralbenefits/client'
require_relative 'aws-sdk-partnercentralbenefits/errors'
require_relative 'aws-sdk-partnercentralbenefits/endpoint_parameters'
require_relative 'aws-sdk-partnercentralbenefits/endpoint_provider'
require_relative 'aws-sdk-partnercentralbenefits/waiters'
require_relative 'aws-sdk-partnercentralbenefits/customizations'
