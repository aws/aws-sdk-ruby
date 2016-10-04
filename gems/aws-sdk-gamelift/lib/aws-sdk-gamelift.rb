# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-gamelift/types'
require_relative 'aws-sdk-gamelift/client_api'
require_relative 'aws-sdk-gamelift/client'
require_relative 'aws-sdk-gamelift/errors'
require_relative 'aws-sdk-gamelift/waiters'
require_relative 'aws-sdk-gamelift/resource'

module Aws
  # @service
  # This module provides support for Amazon GameLift, which shipped in `aws-sdk-gamelift` gem.
  #
  # # Aws::GameLift::Client
  #
  # The {Aws::GameLift::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     gamelift = Aws::GameLift::Client.new
  #     resp = gamelift.create_alias(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::GameLift::Errors
  #
  # Errors returned from Amazon GameLift all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::GameLift::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module GameLift

    GEM_VERSION = '1.0.0'

  end
end
