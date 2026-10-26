# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ConnectHealth', Module.new) unless Aws.const_defined?('ConnectHealth')

# @title Connect Health
# <p>Amazon Connect Health is an AI-powered healthcare service built on Amazon Connect. It provides pre-built agents that automate patient engagement workflows and support clinical documentation at the point of care.</p> <p>You can use the Amazon Connect Health API to programmatically manage domains, configure patient engagement agents, run patient insights jobs, and stream ambient documentation sessions. This API reference describes the available API operations and data types for Amazon Connect Health.</p> <p>We recommend that you use the AWS SDKs to make programmatic API calls to Amazon Connect Health.</p>
module Aws::ConnectHealth
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-connecthealth/types'
require_relative 'aws-sdk-connecthealth/paginators'
require_relative 'aws-sdk-connecthealth/schema'
require_relative 'aws-sdk-connecthealth/auth_parameters'
require_relative 'aws-sdk-connecthealth/auth_resolver'
require_relative 'aws-sdk-connecthealth/client'
require_relative 'aws-sdk-connecthealth/errors'
require_relative 'aws-sdk-connecthealth/endpoint_parameters'
require_relative 'aws-sdk-connecthealth/endpoint_provider'
require_relative 'aws-sdk-connecthealth/waiters'
require_relative 'aws-sdk-connecthealth/customizations'
