# frozen_string_literal: true

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
#     cognito_sync = Aws::CognitoSync::Client.new
#     resp = cognito_sync.bulk_publish(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Cognito Sync are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CognitoSync::Errors::ServiceError
#       # rescues all Amazon Cognito Sync API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CognitoSync

  GEM_VERSION = '1.24.0'

end
