# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-applicationautoscaling/types'
require_relative 'aws-sdk-applicationautoscaling/client_api'
require_relative 'aws-sdk-applicationautoscaling/client'
require_relative 'aws-sdk-applicationautoscaling/errors'
require_relative 'aws-sdk-applicationautoscaling/waiters'
require_relative 'aws-sdk-applicationautoscaling/resource'

# customizations for generated code
require_relative 'aws-sdk-applicationautoscaling/customizations.rb'

module Aws
  # This module provides support for Application Auto Scaling.
  #
  # # Aws::ApplicationAutoScaling::Client
  #
  # The {Aws::ApplicationAutoScaling::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     applicationautoscaling = Aws::ApplicationAutoScaling::Client.new
  #     resp = applicationautoscaling.delete_scaling_policy(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ApplicationAutoScaling::Errors
  #
  # Errors returned from Application Auto Scaling all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ApplicationAutoScaling::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ApplicationAutoScaling

    GEM_VERSION = '1.0.0'

  end
end
