# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-migrationhub/types'
require_relative 'aws-sdk-migrationhub/client_api'
require_relative 'aws-sdk-migrationhub/client'
require_relative 'aws-sdk-migrationhub/errors'
require_relative 'aws-sdk-migrationhub/resource'
require_relative 'aws-sdk-migrationhub/customizations'

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

  GEM_VERSION = '1.29.0'

end
