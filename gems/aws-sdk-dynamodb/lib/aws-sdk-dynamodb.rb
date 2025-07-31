# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:dynamodb)

# This module provides support for Amazon DynamoDB. This module is available in the
# `aws-sdk-dynamodb` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     dynamo_db = Aws::DynamoDB::Client.new
#     resp = dynamo_db.batch_execute_statement(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon DynamoDB are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DynamoDB::Errors::ServiceError
#       # rescues all Amazon DynamoDB API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DynamoDB
  autoload :Types, 'aws-sdk-dynamodb/types'
  autoload :ClientApi, 'aws-sdk-dynamodb/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-dynamodb/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-dynamodb/client'
  autoload :Errors, 'aws-sdk-dynamodb/errors'
  autoload :Waiters, 'aws-sdk-dynamodb/waiters'
  autoload :Resource, 'aws-sdk-dynamodb/resource'
  autoload :EndpointParameters, 'aws-sdk-dynamodb/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-dynamodb/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-dynamodb/endpoints'
  autoload :Table, 'aws-sdk-dynamodb/table'

  GEM_VERSION = '1.148.0'

end

require_relative 'aws-sdk-dynamodb/customizations'
