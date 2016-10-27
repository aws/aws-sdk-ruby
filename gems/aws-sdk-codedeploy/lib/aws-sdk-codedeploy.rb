# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-codedeploy/types'
require_relative 'aws-sdk-codedeploy/client_api'
require_relative 'aws-sdk-codedeploy/client'
require_relative 'aws-sdk-codedeploy/errors'
require_relative 'aws-sdk-codedeploy/waiters'
require_relative 'aws-sdk-codedeploy/resource'

module Aws
  # @service
  # This module provides support for AWS CodeDeploy, which shipped in `aws-sdk-codedeploy` gem.
  #
  # # Aws::CodeDeploy::Client
  #
  # The {Aws::CodeDeploy::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     codedeploy = Aws::CodeDeploy::Client.new
  #     resp = codedeploy.add_tags_to_on_premises_instances(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CodeDeploy::Errors
  #
  # Errors returned from AWS CodeDeploy all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CodeDeploy::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CodeDeploy

    GEM_VERSION = '1.0.0'

  end
end
