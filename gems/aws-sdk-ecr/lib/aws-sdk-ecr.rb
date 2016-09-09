# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-ecr/types'
require_relative 'aws-sdk-ecr/client_api'
require_relative 'aws-sdk-ecr/client'
require_relative 'aws-sdk-ecr/errors'
require_relative 'aws-sdk-ecr/waiters'
require_relative 'aws-sdk-ecr/resource'

# customizations for generated code
require_relative 'aws-sdk-ecr/customizations.rb'

module Aws
  # This module provides support for Amazon EC2 Container Registry.
  #
  # # Aws::ECR::Client
  #
  # The {Aws::ECR::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     ecr = Aws::ECR::Client.new
  #     resp = ecr.batch_check_layer_availability(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ECR::Errors
  #
  # Errors returned from Amazon EC2 Container Registry all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ECR::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ECR

    GEM_VERSION = '1.0.0'

  end
end
