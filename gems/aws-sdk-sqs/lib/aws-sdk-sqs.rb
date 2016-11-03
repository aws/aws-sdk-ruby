# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-sqs/types'
require_relative 'aws-sdk-sqs/client_api'
require_relative 'aws-sdk-sqs/client'
require_relative 'aws-sdk-sqs/errors'
require_relative 'aws-sdk-sqs/resource'

# customizations for generated code
require_relative 'aws-sdk-sqs/customizations.rb'

module Aws
  # @service
  # This module provides support for Amazon Simple Queue Service, which shipped in `aws-sdk-sqs` gem.
  #
  # # Aws::SQS::Client
  #
  # The {Aws::SQS::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     sqs = Aws::SQS::Client.new
  #     resp = sqs.add_permission(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::SQS::Errors
  #
  # Errors returned from Amazon Simple Queue Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SQS::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module SQS

    GEM_VERSION = '1.0.0'

  end
end
