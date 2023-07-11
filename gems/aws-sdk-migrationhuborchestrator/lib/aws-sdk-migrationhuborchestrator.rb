# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-migrationhuborchestrator/types'
require_relative 'aws-sdk-migrationhuborchestrator/client_api'
require_relative 'aws-sdk-migrationhuborchestrator/plugins/endpoints.rb'
require_relative 'aws-sdk-migrationhuborchestrator/client'
require_relative 'aws-sdk-migrationhuborchestrator/errors'
require_relative 'aws-sdk-migrationhuborchestrator/waiters'
require_relative 'aws-sdk-migrationhuborchestrator/resource'
require_relative 'aws-sdk-migrationhuborchestrator/endpoint_parameters'
require_relative 'aws-sdk-migrationhuborchestrator/endpoint_provider'
require_relative 'aws-sdk-migrationhuborchestrator/endpoints'
require_relative 'aws-sdk-migrationhuborchestrator/customizations'

# This module provides support for AWS Migration Hub Orchestrator. This module is available in the
# `aws-sdk-migrationhuborchestrator` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     migration_hub_orchestrator = Aws::MigrationHubOrchestrator::Client.new
#     resp = migration_hub_orchestrator.create_workflow(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Migration Hub Orchestrator are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MigrationHubOrchestrator::Errors::ServiceError
#       # rescues all AWS Migration Hub Orchestrator API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MigrationHubOrchestrator

  GEM_VERSION = '1.7.0'

end
