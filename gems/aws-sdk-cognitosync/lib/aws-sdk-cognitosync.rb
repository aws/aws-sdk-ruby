# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cognitosync/types'
require_relative 'aws-sdk-cognitosync/client_api'
require_relative 'aws-sdk-cognitosync/client'
require_relative 'aws-sdk-cognitosync/errors'
require_relative 'aws-sdk-cognitosync/resource'
require_relative 'aws-sdk-cognitosync/customizations'

# This module provides support for Amazon Cognito Sync. This module is available in the
# `aws-sdk-cognitosync` gem.
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
#
# @service
module Aws::CognitoSync

  GEM_VERSION = '1.3.0'

end
