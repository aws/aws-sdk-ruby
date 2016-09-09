# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-lambda/types'
require_relative 'aws-sdk-lambda/client_api'
require_relative 'aws-sdk-lambda/client'
require_relative 'aws-sdk-lambda/errors'
require_relative 'aws-sdk-lambda/waiters'
require_relative 'aws-sdk-lambda/resource'

# customizations for generated code
require_relative 'aws-sdk-lambda/customizations.rb'

module Aws
  # This module provides support for AWS Lambda.
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

    GEM_VERSION = '1.0.0'

  end
end
