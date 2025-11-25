# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:migrationhuborchestrator)

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
#     resp = migration_hub_orchestrator.create_template(params)
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
  autoload :Types, 'aws-sdk-migrationhuborchestrator/types'
  autoload :ClientApi, 'aws-sdk-migrationhuborchestrator/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-migrationhuborchestrator/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-migrationhuborchestrator/client'
  autoload :Errors, 'aws-sdk-migrationhuborchestrator/errors'
  autoload :Waiters, 'aws-sdk-migrationhuborchestrator/waiters'
  autoload :Resource, 'aws-sdk-migrationhuborchestrator/resource'
  autoload :EndpointParameters, 'aws-sdk-migrationhuborchestrator/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-migrationhuborchestrator/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-migrationhuborchestrator/endpoints'

  GEM_VERSION = '1.40.0'

end

require_relative 'aws-sdk-migrationhuborchestrator/customizations'
