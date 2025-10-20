# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:migrationhubrefactorspaces)

# This module provides support for AWS Migration Hub Refactor Spaces. This module is available in the
# `aws-sdk-migrationhubrefactorspaces` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     migration_hub_refactor_spaces = Aws::MigrationHubRefactorSpaces::Client.new
#     resp = migration_hub_refactor_spaces.create_application(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Migration Hub Refactor Spaces are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MigrationHubRefactorSpaces::Errors::ServiceError
#       # rescues all AWS Migration Hub Refactor Spaces API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MigrationHubRefactorSpaces
  autoload :Types, 'aws-sdk-migrationhubrefactorspaces/types'
  autoload :ClientApi, 'aws-sdk-migrationhubrefactorspaces/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-migrationhubrefactorspaces/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-migrationhubrefactorspaces/client'
  autoload :Errors, 'aws-sdk-migrationhubrefactorspaces/errors'
  autoload :Resource, 'aws-sdk-migrationhubrefactorspaces/resource'
  autoload :EndpointParameters, 'aws-sdk-migrationhubrefactorspaces/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-migrationhubrefactorspaces/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-migrationhubrefactorspaces/endpoints'

  GEM_VERSION = '1.47.0'

end

require_relative 'aws-sdk-migrationhubrefactorspaces/customizations'
