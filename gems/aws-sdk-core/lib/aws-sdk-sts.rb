# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require_relative 'aws-sdk-sts/types'
require_relative 'aws-sdk-sts/client_api'
require_relative 'aws-sdk-sts/client'
require_relative 'aws-sdk-sts/errors'
require_relative 'aws-sdk-sts/waiters'
require_relative 'aws-sdk-sts/resource'

module Aws
  # This module provides support for AWS Security Token Service.
  #
  # # Aws::STS::Client
  #
  # The {Aws::STS::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     sts = Aws::STS::Client.new
  #     resp = sts.assume_role(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::STS::Errors
  #
  # Errors returned from AWS Security Token Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::STS::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module STS; end
end
