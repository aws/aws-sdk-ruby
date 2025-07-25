# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cognitosync)

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
  autoload :Types, 'aws-sdk-cognitosync/types'
  autoload :ClientApi, 'aws-sdk-cognitosync/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cognitosync/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cognitosync/client'
  autoload :Errors, 'aws-sdk-cognitosync/errors'
  autoload :Resource, 'aws-sdk-cognitosync/resource'
  autoload :EndpointParameters, 'aws-sdk-cognitosync/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cognitosync/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cognitosync/endpoints'

  GEM_VERSION = '1.69.0'

end

require_relative 'aws-sdk-cognitosync/customizations'
