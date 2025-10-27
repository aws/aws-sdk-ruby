# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:migrationhubconfig)

# This module provides support for AWS Migration Hub Config. This module is available in the
# `aws-sdk-migrationhubconfig` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     migration_hub_config = Aws::MigrationHubConfig::Client.new
#     resp = migration_hub_config.create_home_region_control(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Migration Hub Config are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MigrationHubConfig::Errors::ServiceError
#       # rescues all AWS Migration Hub Config API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MigrationHubConfig
  autoload :Types, 'aws-sdk-migrationhubconfig/types'
  autoload :ClientApi, 'aws-sdk-migrationhubconfig/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-migrationhubconfig/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-migrationhubconfig/client'
  autoload :Errors, 'aws-sdk-migrationhubconfig/errors'
  autoload :Resource, 'aws-sdk-migrationhubconfig/resource'
  autoload :EndpointParameters, 'aws-sdk-migrationhubconfig/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-migrationhubconfig/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-migrationhubconfig/endpoints'

  GEM_VERSION = '1.60.0'

end

require_relative 'aws-sdk-migrationhubconfig/customizations'
