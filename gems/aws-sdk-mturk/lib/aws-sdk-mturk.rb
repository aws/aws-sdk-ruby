# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MTurk', Module.new) unless Aws.const_defined?('MTurk')

# @title Amazon Mechanical Turk
# <fullname>Amazon Mechanical Turk API Reference</fullname>
module Aws::MTurk
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mturk/types'
require_relative 'aws-sdk-mturk/paginators'
require_relative 'aws-sdk-mturk/schema'
require_relative 'aws-sdk-mturk/auth_parameters'
require_relative 'aws-sdk-mturk/auth_resolver'
require_relative 'aws-sdk-mturk/client'
require_relative 'aws-sdk-mturk/errors'
require_relative 'aws-sdk-mturk/endpoint_parameters'
require_relative 'aws-sdk-mturk/endpoint_provider'
require_relative 'aws-sdk-mturk/waiters'
require_relative 'aws-sdk-mturk/customizations'
