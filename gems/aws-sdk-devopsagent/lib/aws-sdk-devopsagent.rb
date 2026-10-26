# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DevOpsAgent', Module.new) unless Aws.const_defined?('DevOpsAgent')

# @title AWS DevOps Agent Service
# <p>AWS DevOps Agent is your always-available operations teammate. It resolves and proactively prevents incidents, optimizes application reliability and performance, and handles on-demand SRE tasks across AWS, multicloud, and on-premises environments. AWS DevOps Agent investigates incidents as an experienced DevOps engineer would. It learns your applications and their relationships. It works with your observability tools, runbooks, code repositories, and CI/CD pipelines. The agent correlates telemetry, code, and deployment data across all of them.</p>
module Aws::DevOpsAgent
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-devopsagent/types'
require_relative 'aws-sdk-devopsagent/paginators'
require_relative 'aws-sdk-devopsagent/schema'
require_relative 'aws-sdk-devopsagent/auth_parameters'
require_relative 'aws-sdk-devopsagent/auth_resolver'
require_relative 'aws-sdk-devopsagent/client'
require_relative 'aws-sdk-devopsagent/errors'
require_relative 'aws-sdk-devopsagent/endpoint_parameters'
require_relative 'aws-sdk-devopsagent/endpoint_provider'
require_relative 'aws-sdk-devopsagent/waiters'
require_relative 'aws-sdk-devopsagent/customizations'
