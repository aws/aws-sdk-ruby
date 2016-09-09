# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-directoryservice/types'
require_relative 'aws-sdk-directoryservice/client_api'
require_relative 'aws-sdk-directoryservice/client'
require_relative 'aws-sdk-directoryservice/errors'
require_relative 'aws-sdk-directoryservice/waiters'
require_relative 'aws-sdk-directoryservice/resource'

# customizations for generated code
require_relative 'aws-sdk-directoryservice/customizations.rb'

module Aws
  # This module provides support for AWS Directory Service.
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
