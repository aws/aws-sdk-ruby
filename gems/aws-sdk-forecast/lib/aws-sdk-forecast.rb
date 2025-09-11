# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Forecast', Module.new) unless Aws.const_defined?('Forecast')

# @title Amazon Forecast Service
# <p>Provides APIs for creating and managing Amazon Forecast resources.</p>
module Aws::Forecast
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-forecast/types'
require_relative 'aws-sdk-forecast/paginators'
require_relative 'aws-sdk-forecast/schema'
require_relative 'aws-sdk-forecast/auth_parameters'
require_relative 'aws-sdk-forecast/auth_resolver'
require_relative 'aws-sdk-forecast/client'
require_relative 'aws-sdk-forecast/customizations'
require_relative 'aws-sdk-forecast/errors'
require_relative 'aws-sdk-forecast/endpoint_parameters'
require_relative 'aws-sdk-forecast/endpoint_provider'
require_relative 'aws-sdk-forecast/waiters'
