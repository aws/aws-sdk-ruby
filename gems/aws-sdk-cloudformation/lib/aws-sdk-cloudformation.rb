# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-cloudformation/types'
require_relative 'aws-sdk-cloudformation/client_api'
require_relative 'aws-sdk-cloudformation/client'
require_relative 'aws-sdk-cloudformation/errors'
require_relative 'aws-sdk-cloudformation/waiters'
require_relative 'aws-sdk-cloudformation/resource'
require_relative 'aws-sdk-cloudformation/event'
require_relative 'aws-sdk-cloudformation/stack'
require_relative 'aws-sdk-cloudformation/stack_resource'
require_relative 'aws-sdk-cloudformation/stack_resource_summary'

module Aws
  # @service
  # This module provides support for AWS CloudFormation, which shipped in `aws-sdk-cloudformation` gem.
  #
  # # Aws::CloudFormation::Client
  #
  # The {Aws::CloudFormation::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cloudformation = Aws::CloudFormation::Client.new
  #     resp = cloudformation.cancel_update_stack(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CloudFormation::Errors
  #
  # Errors returned from AWS CloudFormation all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudFormation::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CloudFormation

    GEM_VERSION = '1.0.0'

  end
end
