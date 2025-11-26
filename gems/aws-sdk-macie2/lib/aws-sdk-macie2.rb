# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Macie2', Module.new) unless Aws.const_defined?('Macie2')

# @title Amazon Macie 2
# <p>Amazon Macie</p>
module Aws::Macie2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-macie2/types'
require_relative 'aws-sdk-macie2/paginators'
require_relative 'aws-sdk-macie2/schema'
require_relative 'aws-sdk-macie2/auth_parameters'
require_relative 'aws-sdk-macie2/auth_resolver'
require_relative 'aws-sdk-macie2/client'
require_relative 'aws-sdk-macie2/errors'
require_relative 'aws-sdk-macie2/endpoint_parameters'
require_relative 'aws-sdk-macie2/endpoint_provider'
require_relative 'aws-sdk-macie2/waiters'
require_relative 'aws-sdk-macie2/customizations'
