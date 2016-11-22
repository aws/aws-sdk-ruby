# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-iotdataplane/types'
require_relative 'aws-sdk-iotdataplane/client_api'
require_relative 'aws-sdk-iotdataplane/client'
require_relative 'aws-sdk-iotdataplane/errors'
require_relative 'aws-sdk-iotdataplane/resource'

module Aws
  # @service
  # This module provides support for AWS IoT Data Plane, which shipped in `aws-sdk-iotdataplane` gem.
  #
  # # Aws::IoTDataPlane::Client
  #
  # The {Aws::IoTDataPlane::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     iotdataplane = Aws::IoTDataPlane::Client.new
  #     resp = iotdataplane.delete_thing_shadow(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::IoTDataPlane::Errors
  #
  # Errors returned from AWS IoT Data Plane all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::IoTDataPlane::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module IoTDataPlane

    GEM_VERSION = '1.0.0.rc1'

  end
end
