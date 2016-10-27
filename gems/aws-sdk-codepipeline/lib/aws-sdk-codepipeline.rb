# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-codepipeline/types'
require_relative 'aws-sdk-codepipeline/client_api'
require_relative 'aws-sdk-codepipeline/client'
require_relative 'aws-sdk-codepipeline/errors'
require_relative 'aws-sdk-codepipeline/waiters'
require_relative 'aws-sdk-codepipeline/resource'

module Aws
  # @service
  # This module provides support for AWS CodePipeline, which shipped in `aws-sdk-codepipeline` gem.
  #
  # # Aws::CodePipeline::Client
  #
  # The {Aws::CodePipeline::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     codepipeline = Aws::CodePipeline::Client.new
  #     resp = codepipeline.acknowledge_job(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CodePipeline::Errors
  #
  # Errors returned from AWS CodePipeline all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CodePipeline::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CodePipeline

    GEM_VERSION = '1.0.0'

  end
end
