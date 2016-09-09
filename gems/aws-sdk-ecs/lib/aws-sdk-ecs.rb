# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-ecs/types'
require_relative 'aws-sdk-ecs/client_api'
require_relative 'aws-sdk-ecs/client'
require_relative 'aws-sdk-ecs/errors'
require_relative 'aws-sdk-ecs/waiters'
require_relative 'aws-sdk-ecs/resource'

# customizations for generated code
require_relative 'aws-sdk-ecs/customizations.rb'

module Aws
  # This module provides support for Amazon EC2 Container Service.
  #
  # # Aws::ECS::Client
  #
  # The {Aws::ECS::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     ecs = Aws::ECS::Client.new
  #     resp = ecs.create_cluster(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ECS::Errors
  #
  # Errors returned from Amazon EC2 Container Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ECS::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ECS

    GEM_VERSION = '1.0.0'

  end
end
