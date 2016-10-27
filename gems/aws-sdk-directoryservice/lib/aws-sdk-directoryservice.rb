# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-directoryservice/types'
require_relative 'aws-sdk-directoryservice/client_api'
require_relative 'aws-sdk-directoryservice/client'
require_relative 'aws-sdk-directoryservice/errors'
require_relative 'aws-sdk-directoryservice/waiters'
require_relative 'aws-sdk-directoryservice/resource'

module Aws
  # @service
  # This module provides support for AWS Directory Service, which shipped in `aws-sdk-directoryservice` gem.
  #
  # # Aws::DirectoryService::Client
  #
  # The {Aws::DirectoryService::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     directoryservice = Aws::DirectoryService::Client.new
  #     resp = directoryservice.add_ip_routes(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::DirectoryService::Errors
  #
  # Errors returned from AWS Directory Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DirectoryService::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module DirectoryService

    GEM_VERSION = '1.0.0'

  end
end
