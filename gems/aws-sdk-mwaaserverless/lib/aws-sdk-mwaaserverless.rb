# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mwaaserverless)

# This module provides support for AmazonMWAAServerless. This module is available in the
# `aws-sdk-mwaaserverless` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     mwaa_serverless = Aws::MWAAServerless::Client.new
#     resp = mwaa_serverless.create_workflow(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AmazonMWAAServerless are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MWAAServerless::Errors::ServiceError
#       # rescues all AmazonMWAAServerless API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MWAAServerless
  autoload :Types, 'aws-sdk-mwaaserverless/types'
  autoload :ClientApi, 'aws-sdk-mwaaserverless/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mwaaserverless/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mwaaserverless/client'
  autoload :Errors, 'aws-sdk-mwaaserverless/errors'
  autoload :Waiters, 'aws-sdk-mwaaserverless/waiters'
  autoload :Resource, 'aws-sdk-mwaaserverless/resource'
  autoload :EndpointParameters, 'aws-sdk-mwaaserverless/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mwaaserverless/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mwaaserverless/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-mwaaserverless/customizations'
