# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-iot/types'
require_relative 'aws-sdk-iot/client_api'
require_relative 'aws-sdk-iot/client'
require_relative 'aws-sdk-iot/errors'
require_relative 'aws-sdk-iot/resource'
require_relative 'aws-sdk-iot/customizations'

module Aws
  # @service
  # This module provides support for AWS IoT, which shipped in `aws-sdk-iot` gem.
  #
  # # Aws::IoT::Client
  #
  # The {Aws::IoT::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     iot = Aws::IoT::Client.new
  #     resp = iot.accept_certificate_transfer(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::IoT::Errors
  #
  # Errors returned from AWS IoT all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::IoT::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module IoT

    GEM_VERSION = '1.0.0.rc1'

  end
end
