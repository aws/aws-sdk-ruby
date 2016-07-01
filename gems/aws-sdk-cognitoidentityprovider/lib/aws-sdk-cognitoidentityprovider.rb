# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-cognitoidentityprovider/types'
require_relative 'aws-sdk-cognitoidentityprovider/client_api'
require_relative 'aws-sdk-cognitoidentityprovider/client'
require_relative 'aws-sdk-cognitoidentityprovider/errors'
require_relative 'aws-sdk-cognitoidentityprovider/waiters'
require_relative 'aws-sdk-cognitoidentityprovider/resource'

# customizations for generated code
require_relative 'aws-sdk-cognitoidentityprovider/customizations.rb'

module Aws
  # This module provides support for Amazon Cognito Identity Provider.
  #
  # # Aws::CognitoIdentityProvider::Client
  #
  # The {Aws::CognitoIdentityProvider::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cognitoidentityprovider = Aws::CognitoIdentityProvider::Client.new
  #     resp = cognitoidentityprovider.add_custom_attributes(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CognitoIdentityProvider::Errors
  #
  # Errors returned from Amazon Cognito Identity Provider all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CognitoIdentityProvider::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CognitoIdentityProvider

    GEM_VERSION = '1.0.0'

  end
end
