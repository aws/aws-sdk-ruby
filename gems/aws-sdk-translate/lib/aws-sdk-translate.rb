# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Translate', Module.new) unless Aws.const_defined?('Translate')

# @title Amazon Translate
# <p>Provides translation of the input content from the source language to the target language.</p>
module Aws::Translate
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-translate/types'
require_relative 'aws-sdk-translate/paginators'
require_relative 'aws-sdk-translate/schema'
require_relative 'aws-sdk-translate/auth_parameters'
require_relative 'aws-sdk-translate/auth_resolver'
require_relative 'aws-sdk-translate/client'
require_relative 'aws-sdk-translate/customizations'
require_relative 'aws-sdk-translate/errors'
require_relative 'aws-sdk-translate/endpoint_parameters'
require_relative 'aws-sdk-translate/endpoint_provider'
require_relative 'aws-sdk-translate/waiters'
