# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-budgets/types'
require_relative 'aws-sdk-budgets/client_api'
require_relative 'aws-sdk-budgets/client'
require_relative 'aws-sdk-budgets/errors'
require_relative 'aws-sdk-budgets/waiters'
require_relative 'aws-sdk-budgets/resource'

module Aws
  # @service
  # This module provides support for AWS Budgets, which shipped in `aws-sdk-budgets` gem.
  #
  # # Aws::Budgets::Client
  #
  # The {Aws::Budgets::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     budgets = Aws::Budgets::Client.new
  #     resp = budgets.create_budget(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Budgets::Errors
  #
  # Errors returned from AWS Budgets all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Budgets::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Budgets

    GEM_VERSION = '1.0.0'

  end
end
