# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Personalize', Module.new) unless Aws.const_defined?('Personalize')

# @title Amazon Personalize
# <p>Amazon Personalize is a machine learning service that makes it easy to add individualized
#       recommendations to customers.</p>
module Aws::Personalize
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-personalize/types'
require_relative 'aws-sdk-personalize/paginators'
require_relative 'aws-sdk-personalize/schema'
require_relative 'aws-sdk-personalize/auth_parameters'
require_relative 'aws-sdk-personalize/auth_resolver'
require_relative 'aws-sdk-personalize/client'
require_relative 'aws-sdk-personalize/customizations'
require_relative 'aws-sdk-personalize/errors'
require_relative 'aws-sdk-personalize/endpoint_parameters'
require_relative 'aws-sdk-personalize/endpoint_provider'
require_relative 'aws-sdk-personalize/waiters'
