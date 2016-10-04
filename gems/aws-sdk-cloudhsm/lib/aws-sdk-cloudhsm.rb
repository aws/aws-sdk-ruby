# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-cloudhsm/types'
require_relative 'aws-sdk-cloudhsm/client_api'
require_relative 'aws-sdk-cloudhsm/client'
require_relative 'aws-sdk-cloudhsm/errors'
require_relative 'aws-sdk-cloudhsm/waiters'
require_relative 'aws-sdk-cloudhsm/resource'

module Aws
  # @service
  # This module provides support for Amazon CloudHSM, which shipped in `aws-sdk-cloudhsm` gem.
  #
  # # Aws::CloudHSM::Client
  #
  # The {Aws::CloudHSM::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cloudhsm = Aws::CloudHSM::Client.new
  #     resp = cloudhsm.add_tags_to_resource(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CloudHSM::Errors
  #
  # Errors returned from Amazon CloudHSM all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudHSM::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CloudHSM

    GEM_VERSION = '1.0.0'

  end
end
