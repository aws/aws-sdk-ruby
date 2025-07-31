# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cognitoidentity)

# This module provides support for Amazon Cognito Identity. This module is available in the
# `aws-sdk-cognitoidentity` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cognito_identity = Aws::CognitoIdentity::Client.new
#     resp = cognito_identity.create_identity_pool(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Cognito Identity are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CognitoIdentity::Errors::ServiceError
#       # rescues all Amazon Cognito Identity API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CognitoIdentity
  autoload :Types, 'aws-sdk-cognitoidentity/types'
  autoload :ClientApi, 'aws-sdk-cognitoidentity/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cognitoidentity/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cognitoidentity/client'
  autoload :Errors, 'aws-sdk-cognitoidentity/errors'
  autoload :Resource, 'aws-sdk-cognitoidentity/resource'
  autoload :EndpointParameters, 'aws-sdk-cognitoidentity/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cognitoidentity/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cognitoidentity/endpoints'

  GEM_VERSION = '1.76.0'

end

require_relative 'aws-sdk-cognitoidentity/customizations'
