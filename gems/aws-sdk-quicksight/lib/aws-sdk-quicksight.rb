# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('QuickSight', Module.new) unless Aws.const_defined?('QuickSight')

# @title Amazon QuickSight
# <fullname>Amazon QuickSight API Reference</fullname>
#          <p>Amazon QuickSight is a fully managed, serverless business intelligence service for the
#             Amazon Web Services Cloud that makes it easy to extend data and insights to every user in your
#             organization. This API reference contains documentation for a programming interface that
#             you can use to manage Amazon QuickSight. </p>
module Aws::QuickSight
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-quicksight/types'
require_relative 'aws-sdk-quicksight/paginators'
require_relative 'aws-sdk-quicksight/schema'
require_relative 'aws-sdk-quicksight/auth_parameters'
require_relative 'aws-sdk-quicksight/auth_resolver'
require_relative 'aws-sdk-quicksight/client'
require_relative 'aws-sdk-quicksight/errors'
require_relative 'aws-sdk-quicksight/endpoint_parameters'
require_relative 'aws-sdk-quicksight/endpoint_provider'
require_relative 'aws-sdk-quicksight/waiters'
require_relative 'aws-sdk-quicksight/customizations'
