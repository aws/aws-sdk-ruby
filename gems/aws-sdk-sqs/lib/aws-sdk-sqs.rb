# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sqs)

# This module provides support for Amazon Simple Queue Service. This module is available in the
# `aws-sdk-sqs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sqs = Aws::SQS::Client.new
#     resp = sqs.add_permission(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Simple Queue Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SQS::Errors::ServiceError
#       # rescues all Amazon Simple Queue Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SQS
  autoload :Types, 'aws-sdk-sqs/types'
  autoload :ClientApi, 'aws-sdk-sqs/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sqs/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sqs/client'
  autoload :Errors, 'aws-sdk-sqs/errors'
  autoload :Resource, 'aws-sdk-sqs/resource'
  autoload :EndpointParameters, 'aws-sdk-sqs/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sqs/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sqs/endpoints'
  autoload :Message, 'aws-sdk-sqs/message'
  autoload :Queue, 'aws-sdk-sqs/queue'

  GEM_VERSION = '1.99.0'

end

require_relative 'aws-sdk-sqs/customizations'
