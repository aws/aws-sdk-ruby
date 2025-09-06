# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LexRuntimeV2', Module.new) unless Aws.const_defined?('LexRuntimeV2')

# @title Amazon Lex Runtime V2
# <p>This section contains documentation for the Amazon Lex V2 Runtime V2 API operations.</p>
module Aws::LexRuntimeV2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-lexruntimev2/types'
require_relative 'aws-sdk-lexruntimev2/paginators'
require_relative 'aws-sdk-lexruntimev2/schema'
require_relative 'aws-sdk-lexruntimev2/auth_parameters'
require_relative 'aws-sdk-lexruntimev2/auth_resolver'
require_relative 'aws-sdk-lexruntimev2/client'
require_relative 'aws-sdk-lexruntimev2/customizations'
require_relative 'aws-sdk-lexruntimev2/errors'
require_relative 'aws-sdk-lexruntimev2/endpoint_parameters'
require_relative 'aws-sdk-lexruntimev2/endpoint_provider'
require_relative 'aws-sdk-lexruntimev2/waiters'
