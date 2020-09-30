# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-migrationhubconfig/types'
require_relative 'aws-sdk-migrationhubconfig/client_api'
require_relative 'aws-sdk-migrationhubconfig/client'
require_relative 'aws-sdk-migrationhubconfig/errors'
require_relative 'aws-sdk-migrationhubconfig/resource'
require_relative 'aws-sdk-migrationhubconfig/customizations'

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

  GEM_VERSION = '1.9.0'

end
