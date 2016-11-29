# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-cognitoidentity/types'
require_relative 'aws-sdk-cognitoidentity/client_api'
require_relative 'aws-sdk-cognitoidentity/client'
require_relative 'aws-sdk-cognitoidentity/errors'
require_relative 'aws-sdk-cognitoidentity/resource'
require_relative 'aws-sdk-cognitoidentity/customizations'

module Aws
  # @service
  # This module provides support for Amazon Cognito Identity, which shipped in `aws-sdk-cognitoidentity` gem.
  #
  # # Aws::CognitoIdentity::Client
  #
  # The {Aws::CognitoIdentity::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cognitoidentity = Aws::CognitoIdentity::Client.new
  #     resp = cognitoidentity.create_identity_pool(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CognitoIdentity::Errors
  #
  # Errors returned from Amazon Cognito Identity all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CognitoIdentity::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CognitoIdentity

    GEM_VERSION = '1.0.0.rc1'

  end
end
