# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-firehose/types'
require_relative 'aws-sdk-firehose/client_api'
require_relative 'aws-sdk-firehose/client'
require_relative 'aws-sdk-firehose/errors'
require_relative 'aws-sdk-firehose/resource'

module Aws
  # @service
  # This module provides support for Amazon Kinesis Firehose, which shipped in `aws-sdk-firehose` gem.
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
