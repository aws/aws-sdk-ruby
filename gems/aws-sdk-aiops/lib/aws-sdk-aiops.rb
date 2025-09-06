# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AIOps', Module.new) unless Aws.const_defined?('AIOps')

# @title AWS AI Ops
# <p>The CloudWatch investigations feature is a generative AI-powered assistant that can help you respond to incidents in your system. It uses generative AI to scan your system's telemetry and quickly surface suggestions that might be related to your issue. These suggestions include metrics, logs, deployment events, and root-cause hypotheses. </p> <p>You can use API actions to create, manage, and delete investigation groups and investigation group policies. To start and manage investigations, you must use the CloudWatch console.</p>
module Aws::AIOps
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-aiops/types'
require_relative 'aws-sdk-aiops/paginators'
require_relative 'aws-sdk-aiops/schema'
require_relative 'aws-sdk-aiops/auth_parameters'
require_relative 'aws-sdk-aiops/auth_resolver'
require_relative 'aws-sdk-aiops/client'
require_relative 'aws-sdk-aiops/customizations'
require_relative 'aws-sdk-aiops/errors'
require_relative 'aws-sdk-aiops/endpoint_parameters'
require_relative 'aws-sdk-aiops/endpoint_provider'
require_relative 'aws-sdk-aiops/waiters'
