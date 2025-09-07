# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SsmSap', Module.new) unless Aws.const_defined?('SsmSap')

# @title AWS Systems Manager for SAP
# <p>This API reference provides descriptions, syntax, and other details about each of the actions and data types for AWS Systems Manager for SAP. The topic for each action shows the API request parameters and responses. </p>
module Aws::SsmSap
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ssmsap/types'
require_relative 'aws-sdk-ssmsap/paginators'
require_relative 'aws-sdk-ssmsap/schema'
require_relative 'aws-sdk-ssmsap/auth_parameters'
require_relative 'aws-sdk-ssmsap/auth_resolver'
require_relative 'aws-sdk-ssmsap/client'
require_relative 'aws-sdk-ssmsap/customizations'
require_relative 'aws-sdk-ssmsap/errors'
require_relative 'aws-sdk-ssmsap/endpoint_parameters'
require_relative 'aws-sdk-ssmsap/endpoint_provider'
require_relative 'aws-sdk-ssmsap/waiters'
