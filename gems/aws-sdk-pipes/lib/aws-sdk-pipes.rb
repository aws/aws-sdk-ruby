# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Pipes', Module.new) unless Aws.const_defined?('Pipes')

# @title Amazon EventBridge Pipes
# <p>Amazon EventBridge Pipes connects event sources to targets. Pipes reduces the need
#          for specialized knowledge and integration code when developing event driven architectures.
#          This helps ensures consistency across your company’s applications. With Pipes, the target
#          can be any available EventBridge target. To set up a pipe, you select the event
#          source, add optional event filtering, define optional enrichment, and select the target for
#          the event data. </p>
module Aws::Pipes
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-pipes/types'
require_relative 'aws-sdk-pipes/paginators'
require_relative 'aws-sdk-pipes/schema'
require_relative 'aws-sdk-pipes/auth_parameters'
require_relative 'aws-sdk-pipes/auth_resolver'
require_relative 'aws-sdk-pipes/client'
require_relative 'aws-sdk-pipes/customizations'
require_relative 'aws-sdk-pipes/errors'
require_relative 'aws-sdk-pipes/endpoint_parameters'
require_relative 'aws-sdk-pipes/endpoint_provider'
require_relative 'aws-sdk-pipes/waiters'
