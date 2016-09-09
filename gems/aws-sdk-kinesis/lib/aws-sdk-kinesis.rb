# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-kinesis/types'
require_relative 'aws-sdk-kinesis/client_api'
require_relative 'aws-sdk-kinesis/client'
require_relative 'aws-sdk-kinesis/errors'
require_relative 'aws-sdk-kinesis/waiters'
require_relative 'aws-sdk-kinesis/resource'

# customizations for generated code
require_relative 'aws-sdk-kinesis/customizations.rb'

module Aws
  # This module provides support for Amazon Kinesis.
  #
  # # Aws::Kinesis::Client
  #
  # The {Aws::Kinesis::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     kinesis = Aws::Kinesis::Client.new
  #     resp = kinesis.add_tags_to_stream(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Kinesis::Errors
  #
  # Errors returned from Amazon Kinesis all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Kinesis::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Kinesis

    GEM_VERSION = '1.0.0'

  end
end
