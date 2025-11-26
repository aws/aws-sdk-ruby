# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Textract', Module.new) unless Aws.const_defined?('Textract')

# @title Amazon Textract
# <p>Amazon Textract detects and analyzes text in documents and converts it
#          into machine-readable text. This is the API reference documentation for
#          Amazon Textract.</p>
module Aws::Textract
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-textract/types'
require_relative 'aws-sdk-textract/paginators'
require_relative 'aws-sdk-textract/schema'
require_relative 'aws-sdk-textract/auth_parameters'
require_relative 'aws-sdk-textract/auth_resolver'
require_relative 'aws-sdk-textract/client'
require_relative 'aws-sdk-textract/errors'
require_relative 'aws-sdk-textract/endpoint_parameters'
require_relative 'aws-sdk-textract/endpoint_provider'
require_relative 'aws-sdk-textract/waiters'
require_relative 'aws-sdk-textract/customizations'
