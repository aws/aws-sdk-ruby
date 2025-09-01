# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Comprehend', Module.new) unless Aws.const_defined?('Comprehend')

# @title Amazon Comprehend
# <p>Amazon Comprehend is an Amazon Web Services service for gaining insight into the content of documents.
#       Use these actions to determine the topics contained in your documents, the topics they
#       discuss, the predominant sentiment expressed in them, the predominant language used, and
#       more.</p>
module Aws::Comprehend
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-comprehend/types'
require_relative 'aws-sdk-comprehend/paginators'
require_relative 'aws-sdk-comprehend/schema'
require_relative 'aws-sdk-comprehend/auth_parameters'
require_relative 'aws-sdk-comprehend/auth_resolver'
require_relative 'aws-sdk-comprehend/client'
require_relative 'aws-sdk-comprehend/customizations'
require_relative 'aws-sdk-comprehend/errors'
require_relative 'aws-sdk-comprehend/endpoint_parameters'
require_relative 'aws-sdk-comprehend/endpoint_provider'
require_relative 'aws-sdk-comprehend/waiters'
