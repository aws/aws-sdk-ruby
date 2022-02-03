# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cognitoidentityprovider/types'
require_relative 'aws-sdk-cognitoidentityprovider/client_api'
require_relative 'aws-sdk-cognitoidentityprovider/client'
require_relative 'aws-sdk-cognitoidentityprovider/errors'
require_relative 'aws-sdk-cognitoidentityprovider/resource'
require_relative 'aws-sdk-cognitoidentityprovider/customizations'

# This module provides support for Amazon Cognito Identity Provider. This module is available in the
# `aws-sdk-cognitoidentityprovider` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cognito_identity_provider = Aws::CognitoIdentityProvider::Client.new
#     resp = cognito_identity_provider.add_custom_attributes(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Cognito Identity Provider are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CognitoIdentityProvider::Errors::ServiceError
#       # rescues all Amazon Cognito Identity Provider API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CognitoIdentityProvider

  GEM_VERSION = '1.62.0'

end
