# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-kms/types'
require_relative 'aws-sdk-kms/client_api'
require_relative 'aws-sdk-kms/client'
require_relative 'aws-sdk-kms/errors'
require_relative 'aws-sdk-kms/waiters'
require_relative 'aws-sdk-kms/resource'

module Aws
  # @service
  # This module provides support for AWS Key Management Service, which shipped in `aws-sdk-kms` gem.
  #
  # # Aws::KMS::Client
  #
  # The {Aws::KMS::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     kms = Aws::KMS::Client.new
  #     resp = kms.cancel_key_deletion(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::KMS::Errors
  #
  # Errors returned from AWS Key Management Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::KMS::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module KMS

    GEM_VERSION = '1.0.0'

  end
end
