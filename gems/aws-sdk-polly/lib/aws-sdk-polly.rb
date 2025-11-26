# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Polly', Module.new) unless Aws.const_defined?('Polly')

# @title Amazon Polly
# <p>Amazon Polly is a web service that makes it easy to synthesize speech from
#       text.</p>
#          <p>The Amazon Polly service provides API operations for synthesizing
#       high-quality speech from plain text and Speech Synthesis Markup Language
#       (SSML), along with managing pronunciations lexicons that enable you to get
#       the best results for your application domain.</p>
module Aws::Polly
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-polly/types'
require_relative 'aws-sdk-polly/paginators'
require_relative 'aws-sdk-polly/schema'
require_relative 'aws-sdk-polly/auth_parameters'
require_relative 'aws-sdk-polly/auth_resolver'
require_relative 'aws-sdk-polly/client'
require_relative 'aws-sdk-polly/errors'
require_relative 'aws-sdk-polly/endpoint_parameters'
require_relative 'aws-sdk-polly/endpoint_provider'
require_relative 'aws-sdk-polly/waiters'
require_relative 'aws-sdk-polly/customizations'
