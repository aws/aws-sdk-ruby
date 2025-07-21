# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lambda)

# This module provides support for AWS Lambda. This module is available in the
# `aws-sdk-lambda` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lambda = Aws::Lambda::Client.new
#     resp = lambda.add_layer_version_permission(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Lambda are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Lambda::Errors::ServiceError
#       # rescues all AWS Lambda API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Lambda
  autoload :Types, 'aws-sdk-lambda/types'
  autoload :ClientApi, 'aws-sdk-lambda/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lambda/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lambda/client'
  autoload :Errors, 'aws-sdk-lambda/errors'
  autoload :Waiters, 'aws-sdk-lambda/waiters'
  autoload :Resource, 'aws-sdk-lambda/resource'
  autoload :EndpointParameters, 'aws-sdk-lambda/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lambda/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lambda/endpoints'
  autoload :EventStreams, 'aws-sdk-lambda/event_streams'

  GEM_VERSION = '1.154.0'

end

require_relative 'aws-sdk-lambda/customizations'
