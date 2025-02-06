# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:migrationhub)

# This module provides support for AWS Migration Hub. This module is available in the
# `aws-sdk-migrationhub` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     migration_hub = Aws::MigrationHub::Client.new
#     resp = migration_hub.associate_created_artifact(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Migration Hub are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MigrationHub::Errors::ServiceError
#       # rescues all AWS Migration Hub API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MigrationHub
  autoload :Types, 'aws-sdk-migrationhub/types'
  autoload :ClientApi, 'aws-sdk-migrationhub/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-migrationhub/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-migrationhub/client'
  autoload :Errors, 'aws-sdk-migrationhub/errors'
  autoload :Resource, 'aws-sdk-migrationhub/resource'
  autoload :EndpointParameters, 'aws-sdk-migrationhub/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-migrationhub/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-migrationhub/endpoints'

  GEM_VERSION = '1.70.0'

end

require_relative 'aws-sdk-migrationhub/customizations'
