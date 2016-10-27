# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-machinelearning/types'
require_relative 'aws-sdk-machinelearning/client_api'
require_relative 'aws-sdk-machinelearning/client'
require_relative 'aws-sdk-machinelearning/errors'
require_relative 'aws-sdk-machinelearning/waiters'
require_relative 'aws-sdk-machinelearning/resource'

module Aws
  # @service
  # This module provides support for Amazon Machine Learning, which shipped in `aws-sdk-machinelearning` gem.
  #
  # # Aws::MachineLearning::Client
  #
  # The {Aws::MachineLearning::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     machinelearning = Aws::MachineLearning::Client.new
  #     resp = machinelearning.add_tags(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::MachineLearning::Errors
  #
  # Errors returned from Amazon Machine Learning all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MachineLearning::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module MachineLearning

    GEM_VERSION = '1.0.0'

  end
end
