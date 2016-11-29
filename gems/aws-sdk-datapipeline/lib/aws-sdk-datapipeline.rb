# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-datapipeline/types'
require_relative 'aws-sdk-datapipeline/client_api'
require_relative 'aws-sdk-datapipeline/client'
require_relative 'aws-sdk-datapipeline/errors'
require_relative 'aws-sdk-datapipeline/resource'
require_relative 'aws-sdk-datapipeline/customizations'

module Aws
  # @service
  # This module provides support for AWS Data Pipeline, which shipped in `aws-sdk-datapipeline` gem.
  #
  # # Aws::DataPipeline::Client
  #
  # The {Aws::DataPipeline::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     datapipeline = Aws::DataPipeline::Client.new
  #     resp = datapipeline.activate_pipeline(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::DataPipeline::Errors
  #
  # Errors returned from AWS Data Pipeline all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DataPipeline::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module DataPipeline

    GEM_VERSION = '1.0.0.rc1'

  end
end
