# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LakeFormation', Module.new) unless Aws.const_defined?('LakeFormation')

# @title AWS Lake Formation
# <fullname>Lake Formation</fullname>
#          <p>Defines the public endpoint for the Lake Formation service.</p>
module Aws::LakeFormation
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-lakeformation/types'
require_relative 'aws-sdk-lakeformation/paginators'
require_relative 'aws-sdk-lakeformation/schema'
require_relative 'aws-sdk-lakeformation/auth_parameters'
require_relative 'aws-sdk-lakeformation/auth_resolver'
require_relative 'aws-sdk-lakeformation/client'
require_relative 'aws-sdk-lakeformation/customizations'
require_relative 'aws-sdk-lakeformation/errors'
require_relative 'aws-sdk-lakeformation/endpoint_parameters'
require_relative 'aws-sdk-lakeformation/endpoint_provider'
require_relative 'aws-sdk-lakeformation/waiters'
