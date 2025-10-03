# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AppTest', Module.new) unless Aws.const_defined?('AppTest')

# @title AWS Mainframe Modernization Application Testing
# <p>AWS Mainframe Modernization Application Testing provides tools and resources for automated functional equivalence testing for your migration projects.</p>
module Aws::AppTest
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-apptest/types'
require_relative 'aws-sdk-apptest/paginators'
require_relative 'aws-sdk-apptest/schema'
require_relative 'aws-sdk-apptest/auth_parameters'
require_relative 'aws-sdk-apptest/auth_resolver'
require_relative 'aws-sdk-apptest/client'
require_relative 'aws-sdk-apptest/customizations'
require_relative 'aws-sdk-apptest/errors'
require_relative 'aws-sdk-apptest/endpoint_parameters'
require_relative 'aws-sdk-apptest/endpoint_provider'
require_relative 'aws-sdk-apptest/waiters'
