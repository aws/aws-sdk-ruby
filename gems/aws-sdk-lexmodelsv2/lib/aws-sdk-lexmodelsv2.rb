# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LexModelsV2', Module.new) unless Aws.const_defined?('LexModelsV2')

# @title Amazon Lex Model Building V2
# <p></p>
module Aws::LexModelsV2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-lexmodelsv2/types'
require_relative 'aws-sdk-lexmodelsv2/paginators'
require_relative 'aws-sdk-lexmodelsv2/schema'
require_relative 'aws-sdk-lexmodelsv2/auth_parameters'
require_relative 'aws-sdk-lexmodelsv2/auth_resolver'
require_relative 'aws-sdk-lexmodelsv2/client'
require_relative 'aws-sdk-lexmodelsv2/customizations'
require_relative 'aws-sdk-lexmodelsv2/errors'
require_relative 'aws-sdk-lexmodelsv2/endpoint_parameters'
require_relative 'aws-sdk-lexmodelsv2/endpoint_provider'
require_relative 'aws-sdk-lexmodelsv2/waiters'
