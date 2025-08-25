# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:appsync)

# This module provides support for AWS AppSync. This module is available in the
# `aws-sdk-appsync` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_sync = Aws::AppSync::Client.new
#     resp = app_sync.associate_api(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS AppSync are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppSync::Errors::ServiceError
#       # rescues all AWS AppSync API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppSync
  autoload :Types, 'aws-sdk-appsync/types'
  autoload :ClientApi, 'aws-sdk-appsync/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-appsync/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-appsync/client'
  autoload :Errors, 'aws-sdk-appsync/errors'
  autoload :Resource, 'aws-sdk-appsync/resource'
  autoload :EndpointParameters, 'aws-sdk-appsync/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-appsync/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-appsync/endpoints'

  GEM_VERSION = '1.111.0'

end

require_relative 'aws-sdk-appsync/customizations'
