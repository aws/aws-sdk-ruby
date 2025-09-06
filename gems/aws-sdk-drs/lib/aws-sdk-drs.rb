# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Drs', Module.new) unless Aws.const_defined?('Drs')

# @title Elastic Disaster Recovery Service
# <p>AWS Elastic Disaster Recovery Service.</p>
module Aws::Drs
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-drs/types'
require_relative 'aws-sdk-drs/paginators'
require_relative 'aws-sdk-drs/schema'
require_relative 'aws-sdk-drs/auth_parameters'
require_relative 'aws-sdk-drs/auth_resolver'
require_relative 'aws-sdk-drs/client'
require_relative 'aws-sdk-drs/customizations'
require_relative 'aws-sdk-drs/errors'
require_relative 'aws-sdk-drs/endpoint_parameters'
require_relative 'aws-sdk-drs/endpoint_provider'
require_relative 'aws-sdk-drs/waiters'
