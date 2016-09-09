# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-iot/types'
require_relative 'aws-sdk-iot/client_api'
require_relative 'aws-sdk-iot/client'
require_relative 'aws-sdk-iot/errors'
require_relative 'aws-sdk-iot/waiters'
require_relative 'aws-sdk-iot/resource'

# customizations for generated code
require_relative 'aws-sdk-iot/customizations.rb'

module Aws
  # This module provides support for AWS IoT.
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

    GEM_VERSION = '1.0.0'

  end
end
