# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-workspaces/types'
require_relative 'aws-sdk-workspaces/client_api'
require_relative 'aws-sdk-workspaces/client'
require_relative 'aws-sdk-workspaces/errors'
require_relative 'aws-sdk-workspaces/waiters'
require_relative 'aws-sdk-workspaces/resource'

module Aws
  # @service
  # This module provides support for Amazon WorkSpaces, which shipped in `aws-sdk-workspaces` gem.
  #
  # # Aws::WorkSpaces::Client
  #
  # The {Aws::WorkSpaces::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     workspaces = Aws::WorkSpaces::Client.new
  #     resp = workspaces.create_tags(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::WorkSpaces::Errors
  #
  # Errors returned from Amazon WorkSpaces all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::WorkSpaces::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module WorkSpaces

    GEM_VERSION = '1.0.0'

  end
end
