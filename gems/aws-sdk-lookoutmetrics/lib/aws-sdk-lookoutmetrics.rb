# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('LookoutMetrics', Module.new) unless Aws.const_defined?('LookoutMetrics')

# @title Amazon Lookout for Metrics
# <p>This is the <i>Amazon Lookout for Metrics API Reference</i>. For an introduction to the service
#       with tutorials for getting started, visit <a href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev">Amazon
#         Lookout for Metrics Developer Guide</a>.</p>
module Aws::LookoutMetrics
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-lookoutmetrics/types'
require_relative 'aws-sdk-lookoutmetrics/paginators'
require_relative 'aws-sdk-lookoutmetrics/schema'
require_relative 'aws-sdk-lookoutmetrics/auth_parameters'
require_relative 'aws-sdk-lookoutmetrics/auth_resolver'
require_relative 'aws-sdk-lookoutmetrics/client'
require_relative 'aws-sdk-lookoutmetrics/errors'
require_relative 'aws-sdk-lookoutmetrics/endpoint_parameters'
require_relative 'aws-sdk-lookoutmetrics/endpoint_provider'
require_relative 'aws-sdk-lookoutmetrics/waiters'
require_relative 'aws-sdk-lookoutmetrics/customizations'
