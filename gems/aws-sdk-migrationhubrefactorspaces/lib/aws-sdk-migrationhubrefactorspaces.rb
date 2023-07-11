# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-migrationhubrefactorspaces/types'
require_relative 'aws-sdk-migrationhubrefactorspaces/client_api'
require_relative 'aws-sdk-migrationhubrefactorspaces/plugins/endpoints.rb'
require_relative 'aws-sdk-migrationhubrefactorspaces/client'
require_relative 'aws-sdk-migrationhubrefactorspaces/errors'
require_relative 'aws-sdk-migrationhubrefactorspaces/resource'
require_relative 'aws-sdk-migrationhubrefactorspaces/endpoint_parameters'
require_relative 'aws-sdk-migrationhubrefactorspaces/endpoint_provider'
require_relative 'aws-sdk-migrationhubrefactorspaces/endpoints'
require_relative 'aws-sdk-migrationhubrefactorspaces/customizations'

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

  GEM_VERSION = '1.18.0'

end
