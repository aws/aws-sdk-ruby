# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Forecastquery', Module.new) unless Aws.const_defined?('Forecastquery')

# @title Amazon Forecast Query Service
# <p>Provides APIs for creating and managing Amazon Forecast resources.</p>
module Aws::Forecastquery
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-forecastquery/types'
require_relative 'aws-sdk-forecastquery/paginators'
require_relative 'aws-sdk-forecastquery/schema'
require_relative 'aws-sdk-forecastquery/auth_parameters'
require_relative 'aws-sdk-forecastquery/auth_resolver'
require_relative 'aws-sdk-forecastquery/client'
require_relative 'aws-sdk-forecastquery/customizations'
require_relative 'aws-sdk-forecastquery/errors'
require_relative 'aws-sdk-forecastquery/endpoint_parameters'
require_relative 'aws-sdk-forecastquery/endpoint_provider'
require_relative 'aws-sdk-forecastquery/waiters'
