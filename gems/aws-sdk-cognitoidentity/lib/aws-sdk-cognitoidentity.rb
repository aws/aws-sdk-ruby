# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
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

# This module provides support for Amazon Cognito Identity. This module is available in the
# `aws-sdk-cognitoidentity` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
# See {Client} for more information.
#
# # Errors
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
#
# @service
module Aws::CognitoIdentity

  GEM_VERSION = '1.3.0'

end
