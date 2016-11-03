# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-directconnect/types'
require_relative 'aws-sdk-directconnect/client_api'
require_relative 'aws-sdk-directconnect/client'
require_relative 'aws-sdk-directconnect/errors'
require_relative 'aws-sdk-directconnect/resource'

module Aws
  # @service
  # This module provides support for AWS Direct Connect, which shipped in `aws-sdk-directconnect` gem.
  #
  # # Aws::DirectConnect::Client
  #
  # The {Aws::DirectConnect::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     directconnect = Aws::DirectConnect::Client.new
  #     resp = directconnect.allocate_connection_on_interconnect(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::DirectConnect::Errors
  #
  # Errors returned from AWS Direct Connect all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DirectConnect::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module DirectConnect

    GEM_VERSION = '1.0.0'

  end
end
