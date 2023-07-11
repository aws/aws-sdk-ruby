# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-opensearchserverless/types'
require_relative 'aws-sdk-opensearchserverless/client_api'
require_relative 'aws-sdk-opensearchserverless/plugins/endpoints.rb'
require_relative 'aws-sdk-opensearchserverless/client'
require_relative 'aws-sdk-opensearchserverless/errors'
require_relative 'aws-sdk-opensearchserverless/resource'
require_relative 'aws-sdk-opensearchserverless/endpoint_parameters'
require_relative 'aws-sdk-opensearchserverless/endpoint_provider'
require_relative 'aws-sdk-opensearchserverless/endpoints'
require_relative 'aws-sdk-opensearchserverless/customizations'

# This module provides support for OpenSearch Service Serverless. This module is available in the
# `aws-sdk-opensearchserverless` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     open_search_serverless = Aws::OpenSearchServerless::Client.new
#     resp = open_search_serverless.batch_get_collection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from OpenSearch Service Serverless are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::OpenSearchServerless::Errors::ServiceError
#       # rescues all OpenSearch Service Serverless API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::OpenSearchServerless

  GEM_VERSION = '1.7.0'

end
