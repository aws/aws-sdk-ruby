# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-codecommit/types'
require_relative 'aws-sdk-codecommit/client_api'
require_relative 'aws-sdk-codecommit/client'
require_relative 'aws-sdk-codecommit/errors'
require_relative 'aws-sdk-codecommit/waiters'
require_relative 'aws-sdk-codecommit/resource'

# customizations for generated code
require_relative 'aws-sdk-codecommit/customizations.rb'

module Aws
  # This module provides support for AWS CodeCommit.
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

    GEM_VERSION = '1.0.0'

  end
end
