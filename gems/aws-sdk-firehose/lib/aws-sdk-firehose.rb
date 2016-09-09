# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-firehose/types'
require_relative 'aws-sdk-firehose/client_api'
require_relative 'aws-sdk-firehose/client'
require_relative 'aws-sdk-firehose/errors'
require_relative 'aws-sdk-firehose/waiters'
require_relative 'aws-sdk-firehose/resource'

# customizations for generated code
require_relative 'aws-sdk-firehose/customizations.rb'

module Aws
  # This module provides support for Amazon Kinesis Firehose.
  #
  # # Aws::Firehose::Client
  #
  # The {Aws::Firehose::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     firehose = Aws::Firehose::Client.new
  #     resp = firehose.create_delivery_stream(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Firehose::Errors
  #
  # Errors returned from Amazon Kinesis Firehose all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Firehose::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Firehose

    GEM_VERSION = '1.0.0'

  end
end
