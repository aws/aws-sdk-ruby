# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-cognitosync/types'
require_relative 'aws-sdk-cognitosync/client_api'
require_relative 'aws-sdk-cognitosync/client'
require_relative 'aws-sdk-cognitosync/errors'
require_relative 'aws-sdk-cognitosync/waiters'
require_relative 'aws-sdk-cognitosync/resource'

# customizations for generated code
require_relative 'aws-sdk-cognitosync/customizations.rb'

module Aws
  # This module provides support for Amazon Cognito Sync.
  #
  # # Aws::CognitoSync::Client
  #
  # The {Aws::CognitoSync::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cognitosync = Aws::CognitoSync::Client.new
  #     resp = cognitosync.bulk_publish(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CognitoSync::Errors
  #
  # Errors returned from Amazon Cognito Sync all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CognitoSync::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CognitoSync

    GEM_VERSION = '1.0.0'

  end
end
