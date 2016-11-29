# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-storagegateway/types'
require_relative 'aws-sdk-storagegateway/client_api'
require_relative 'aws-sdk-storagegateway/client'
require_relative 'aws-sdk-storagegateway/errors'
require_relative 'aws-sdk-storagegateway/resource'
require_relative 'aws-sdk-storagegateway/customizations'

module Aws
  # @service
  # This module provides support for AWS Storage Gateway, which shipped in `aws-sdk-storagegateway` gem.
  #
  # # Aws::StorageGateway::Client
  #
  # The {Aws::StorageGateway::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     storagegateway = Aws::StorageGateway::Client.new
  #     resp = storagegateway.activate_gateway(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::StorageGateway::Errors
  #
  # Errors returned from AWS Storage Gateway all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::StorageGateway::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module StorageGateway

    GEM_VERSION = '1.0.0.rc1'

  end
end
