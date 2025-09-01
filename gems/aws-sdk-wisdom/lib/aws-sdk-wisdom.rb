# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Wisdom', Module.new) unless Aws.const_defined?('Wisdom')

# @title Amazon Connect Wisdom Service
# <p>Amazon Connect Wisdom delivers agents the information they need to solve customer issues as they're
#       actively speaking with customers. Agents can search across connected repositories from within
#       their agent desktop to find answers quickly. Use Amazon Connect Wisdom to create an assistant and a
#       knowledge base, for example, or manage content by uploading custom files.</p>
module Aws::Wisdom
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-wisdom/types'
require_relative 'aws-sdk-wisdom/paginators'
require_relative 'aws-sdk-wisdom/schema'
require_relative 'aws-sdk-wisdom/auth_parameters'
require_relative 'aws-sdk-wisdom/auth_resolver'
require_relative 'aws-sdk-wisdom/client'
require_relative 'aws-sdk-wisdom/customizations'
require_relative 'aws-sdk-wisdom/errors'
require_relative 'aws-sdk-wisdom/endpoint_parameters'
require_relative 'aws-sdk-wisdom/endpoint_provider'
require_relative 'aws-sdk-wisdom/waiters'
