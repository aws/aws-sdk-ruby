# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Inspector', Module.new) unless Aws.const_defined?('Inspector')

# @title Amazon Inspector
# <fullname>Amazon Inspector</fullname>
#          <p>Amazon Inspector enables you to analyze the behavior of your AWS resources and to
#          identify potential security issues. For more information, see <a href="https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html"> Amazon Inspector User
#             Guide</a>.</p>
module Aws::Inspector
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-inspector/types'
require_relative 'aws-sdk-inspector/paginators'
require_relative 'aws-sdk-inspector/schema'
require_relative 'aws-sdk-inspector/auth_parameters'
require_relative 'aws-sdk-inspector/auth_resolver'
require_relative 'aws-sdk-inspector/client'
require_relative 'aws-sdk-inspector/customizations'
require_relative 'aws-sdk-inspector/errors'
require_relative 'aws-sdk-inspector/endpoint_parameters'
require_relative 'aws-sdk-inspector/endpoint_provider'
require_relative 'aws-sdk-inspector/waiters'
