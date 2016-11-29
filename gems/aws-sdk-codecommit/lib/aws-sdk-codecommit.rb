# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-codecommit/types'
require_relative 'aws-sdk-codecommit/client_api'
require_relative 'aws-sdk-codecommit/client'
require_relative 'aws-sdk-codecommit/errors'
require_relative 'aws-sdk-codecommit/resource'
require_relative 'aws-sdk-codecommit/customizations'

module Aws
  # @service
  # This module provides support for AWS CodeCommit, which shipped in `aws-sdk-codecommit` gem.
  #
  # # Aws::CodeCommit::Client
  #
  # The {Aws::CodeCommit::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     codecommit = Aws::CodeCommit::Client.new
  #     resp = codecommit.batch_get_repositories(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CodeCommit::Errors
  #
  # Errors returned from AWS CodeCommit all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CodeCommit::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CodeCommit

    GEM_VERSION = '1.0.0.rc1'

  end
end
