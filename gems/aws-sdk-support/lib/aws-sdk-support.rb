# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-support/types'
require_relative 'aws-sdk-support/client_api'
require_relative 'aws-sdk-support/client'
require_relative 'aws-sdk-support/errors'
require_relative 'aws-sdk-support/resource'
require_relative 'aws-sdk-support/customizations'

module Aws
  # @service
  # This module provides support for AWS Support, which shipped in `aws-sdk-support` gem.
  #
  # # Aws::Support::Client
  #
  # The {Aws::Support::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     support = Aws::Support::Client.new
  #     resp = support.add_attachments_to_set(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Support::Errors
  #
  # Errors returned from AWS Support all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Support::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Support

    GEM_VERSION = '1.0.0.rc1'

  end
end
