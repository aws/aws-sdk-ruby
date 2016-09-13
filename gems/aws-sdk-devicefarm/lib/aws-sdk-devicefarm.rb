# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-devicefarm/types'
require_relative 'aws-sdk-devicefarm/client_api'
require_relative 'aws-sdk-devicefarm/client'
require_relative 'aws-sdk-devicefarm/errors'
require_relative 'aws-sdk-devicefarm/waiters'
require_relative 'aws-sdk-devicefarm/resource'

module Aws
  # This module provides support for AWS Device Farm.
  #
  # # Aws::DeviceFarm::Client
  #
  # The {Aws::DeviceFarm::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     devicefarm = Aws::DeviceFarm::Client.new
  #     resp = devicefarm.create_device_pool(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::DeviceFarm::Errors
  #
  # Errors returned from AWS Device Farm all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DeviceFarm::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module DeviceFarm

    GEM_VERSION = '1.0.0'

  end
end
