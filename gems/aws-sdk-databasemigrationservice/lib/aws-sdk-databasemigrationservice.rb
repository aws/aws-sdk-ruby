# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-databasemigrationservice/types'
require_relative 'aws-sdk-databasemigrationservice/client_api'
require_relative 'aws-sdk-databasemigrationservice/client'
require_relative 'aws-sdk-databasemigrationservice/errors'
require_relative 'aws-sdk-databasemigrationservice/waiters'
require_relative 'aws-sdk-databasemigrationservice/resource'

module Aws
  # @service
  # This module provides support for AWS Database Migration Service, which shipped in `aws-sdk-databasemigrationservice` gem.
  #
  # # Aws::DatabaseMigrationService::Client
  #
  # The {Aws::DatabaseMigrationService::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     databasemigrationservice = Aws::DatabaseMigrationService::Client.new
  #     resp = databasemigrationservice.add_tags_to_resource(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::DatabaseMigrationService::Errors
  #
  # Errors returned from AWS Database Migration Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DatabaseMigrationService::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module DatabaseMigrationService

    GEM_VERSION = '1.0.0'

  end
end
