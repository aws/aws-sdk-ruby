# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SageMakerGeospatial', Module.new) unless Aws.const_defined?('SageMakerGeospatial')

# @title Amazon SageMaker geospatial capabilities
# <p>Provides APIs for creating and managing SageMaker geospatial resources.</p>
module Aws::SageMakerGeospatial
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sagemakergeospatial/types'
require_relative 'aws-sdk-sagemakergeospatial/paginators'
require_relative 'aws-sdk-sagemakergeospatial/schema'
require_relative 'aws-sdk-sagemakergeospatial/auth_parameters'
require_relative 'aws-sdk-sagemakergeospatial/auth_resolver'
require_relative 'aws-sdk-sagemakergeospatial/client'
require_relative 'aws-sdk-sagemakergeospatial/errors'
require_relative 'aws-sdk-sagemakergeospatial/endpoint_parameters'
require_relative 'aws-sdk-sagemakergeospatial/endpoint_provider'
require_relative 'aws-sdk-sagemakergeospatial/waiters'
require_relative 'aws-sdk-sagemakergeospatial/customizations'
