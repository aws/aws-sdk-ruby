# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-lambdapreview/types'
require_relative 'aws-sdk-lambdapreview/client_api'
require_relative 'aws-sdk-lambdapreview/client'
require_relative 'aws-sdk-lambdapreview/errors'
require_relative 'aws-sdk-lambdapreview/waiters'
require_relative 'aws-sdk-lambdapreview/resource'

module Aws
  # This module provides support for AWS Lambda.
  #
  # # Aws::LambdaPreview::Client
  #
  # The {Aws::LambdaPreview::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     lambdapreview = Aws::LambdaPreview::Client.new
  #     resp = lambdapreview.add_event_source(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::LambdaPreview::Errors
  #
  # Errors returned from AWS Lambda all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::LambdaPreview::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module LambdaPreview

    GEM_VERSION = '1.0.0'

  end
end
