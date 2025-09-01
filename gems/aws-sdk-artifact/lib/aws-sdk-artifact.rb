# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Artifact', Module.new) unless Aws.const_defined?('Artifact')

# @title AWS Artifact
# <p>This reference provides descriptions of the low-level AWS Artifact Service API.</p>
module Aws::Artifact
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-artifact/types'
require_relative 'aws-sdk-artifact/paginators'
require_relative 'aws-sdk-artifact/schema'
require_relative 'aws-sdk-artifact/auth_parameters'
require_relative 'aws-sdk-artifact/auth_resolver'
require_relative 'aws-sdk-artifact/client'
require_relative 'aws-sdk-artifact/customizations'
require_relative 'aws-sdk-artifact/errors'
require_relative 'aws-sdk-artifact/endpoint_parameters'
require_relative 'aws-sdk-artifact/endpoint_provider'
require_relative 'aws-sdk-artifact/waiters'
