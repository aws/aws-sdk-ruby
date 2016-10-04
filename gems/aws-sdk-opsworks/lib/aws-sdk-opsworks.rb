# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-opsworks/types'
require_relative 'aws-sdk-opsworks/client_api'
require_relative 'aws-sdk-opsworks/client'
require_relative 'aws-sdk-opsworks/errors'
require_relative 'aws-sdk-opsworks/waiters'
require_relative 'aws-sdk-opsworks/resource'
require_relative 'aws-sdk-opsworks/layer'
require_relative 'aws-sdk-opsworks/stack'
require_relative 'aws-sdk-opsworks/stack_summary'

module Aws
  # @service
  # This module provides support for AWS OpsWorks, which shipped in `aws-sdk-opsworks` gem.
  #
  # # Aws::OpsWorks::Client
  #
  # The {Aws::OpsWorks::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     opsworks = Aws::OpsWorks::Client.new
  #     resp = opsworks.assign_instance(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::OpsWorks::Errors
  #
  # Errors returned from AWS OpsWorks all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::OpsWorks::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module OpsWorks

    GEM_VERSION = '1.0.0'

  end
end
