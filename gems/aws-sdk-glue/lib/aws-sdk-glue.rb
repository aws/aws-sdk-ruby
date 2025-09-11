# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Glue', Module.new) unless Aws.const_defined?('Glue')

# @title AWS Glue
# <fullname>Glue</fullname>
#          <p>Defines the public endpoint for the Glue service.</p>
module Aws::Glue
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-glue/types'
require_relative 'aws-sdk-glue/paginators'
require_relative 'aws-sdk-glue/schema'
require_relative 'aws-sdk-glue/auth_parameters'
require_relative 'aws-sdk-glue/auth_resolver'
require_relative 'aws-sdk-glue/client'
require_relative 'aws-sdk-glue/customizations'
require_relative 'aws-sdk-glue/errors'
require_relative 'aws-sdk-glue/endpoint_parameters'
require_relative 'aws-sdk-glue/endpoint_provider'
require_relative 'aws-sdk-glue/waiters'
