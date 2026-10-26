# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('IAMToolbox', Module.new) unless Aws.const_defined?('IAMToolbox')

# @title IAM Toolbox (Preview)
# <p>Contains APIs to work with AWS Identity and Access Management (IAM).</p>
module Aws::IAMToolbox
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-iamtoolbox/types'
require_relative 'aws-sdk-iamtoolbox/paginators'
require_relative 'aws-sdk-iamtoolbox/schema'
require_relative 'aws-sdk-iamtoolbox/auth_parameters'
require_relative 'aws-sdk-iamtoolbox/auth_resolver'
require_relative 'aws-sdk-iamtoolbox/client'
require_relative 'aws-sdk-iamtoolbox/errors'
require_relative 'aws-sdk-iamtoolbox/endpoint_parameters'
require_relative 'aws-sdk-iamtoolbox/endpoint_provider'
require_relative 'aws-sdk-iamtoolbox/waiters'
require_relative 'aws-sdk-iamtoolbox/customizations'
