# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Shield', Module.new) unless Aws.const_defined?('Shield')

# @title AWS Shield
# <fullname>Shield Advanced</fullname>
#          <p>This is the <i>Shield Advanced API Reference</i>. This guide is for developers who need detailed information about the Shield Advanced API actions,
#          data types, and errors. For detailed information about WAF and Shield Advanced features and an overview of how to use the WAF and Shield Advanced APIs, see the
#          <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">WAF and Shield Developer Guide</a>.</p>
module Aws::Shield
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-shield/types'
require_relative 'aws-sdk-shield/paginators'
require_relative 'aws-sdk-shield/schema'
require_relative 'aws-sdk-shield/auth_parameters'
require_relative 'aws-sdk-shield/auth_resolver'
require_relative 'aws-sdk-shield/client'
require_relative 'aws-sdk-shield/errors'
require_relative 'aws-sdk-shield/endpoint_parameters'
require_relative 'aws-sdk-shield/endpoint_provider'
require_relative 'aws-sdk-shield/waiters'
require_relative 'aws-sdk-shield/customizations'
