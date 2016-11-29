# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-lambda/types'
require_relative 'aws-sdk-lambda/client_api'
require_relative 'aws-sdk-lambda/client'
require_relative 'aws-sdk-lambda/errors'
require_relative 'aws-sdk-lambda/resource'
require_relative 'aws-sdk-lambda/customizations'

module Aws
  # @service
  # This module provides support for AWS Lambda, which shipped in `aws-sdk-lambda` gem.
  #
  # # Aws::Lambda::Client
  #
  # The {Aws::Lambda::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     lambda = Aws::Lambda::Client.new
  #     resp = lambda.add_permission(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Lambda::Errors
  #
  # Errors returned from AWS Lambda all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Lambda::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Lambda

    GEM_VERSION = '1.0.0.rc1'

  end
end
