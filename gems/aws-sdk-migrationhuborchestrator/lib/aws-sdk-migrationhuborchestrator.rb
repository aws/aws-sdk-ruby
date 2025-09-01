# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MigrationHubOrchestrator', Module.new) unless Aws.const_defined?('MigrationHubOrchestrator')

# @title AWS Migration Hub Orchestrator
# <p>This API reference provides descriptions, syntax, and other details about each of the
#             actions and data types for AWS Migration Hub Orchestrator. The topic for each action shows the API
#             request parameters and responses. Alternatively, you can use one of the AWS SDKs to
#             access an API that is tailored to the programming language or platform that you're
#             using.</p>
module Aws::MigrationHubOrchestrator
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-migrationhuborchestrator/types'
require_relative 'aws-sdk-migrationhuborchestrator/paginators'
require_relative 'aws-sdk-migrationhuborchestrator/schema'
require_relative 'aws-sdk-migrationhuborchestrator/auth_parameters'
require_relative 'aws-sdk-migrationhuborchestrator/auth_resolver'
require_relative 'aws-sdk-migrationhuborchestrator/client'
require_relative 'aws-sdk-migrationhuborchestrator/customizations'
require_relative 'aws-sdk-migrationhuborchestrator/errors'
require_relative 'aws-sdk-migrationhuborchestrator/endpoint_parameters'
require_relative 'aws-sdk-migrationhuborchestrator/endpoint_provider'
require_relative 'aws-sdk-migrationhuborchestrator/waiters'
