# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-configservice/types'
require_relative 'aws-sdk-configservice/client_api'
require_relative 'aws-sdk-configservice/client'
require_relative 'aws-sdk-configservice/errors'
require_relative 'aws-sdk-configservice/waiters'
require_relative 'aws-sdk-configservice/resource'

module Aws
  # @service
  # This module provides support for AWS Config, which shipped in `aws-sdk-configservice` gem.
  #
  # # Aws::ConfigService::Client
  #
  # The {Aws::ConfigService::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     configservice = Aws::ConfigService::Client.new
  #     resp = configservice.delete_config_rule(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ConfigService::Errors
  #
  # Errors returned from AWS Config all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ConfigService::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ConfigService

    GEM_VERSION = '1.0.0'

  end
end
