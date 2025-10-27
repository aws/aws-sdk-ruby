# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:directoryservice)

# This module provides support for AWS Directory Service. This module is available in the
# `aws-sdk-directoryservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     directory_service = Aws::DirectoryService::Client.new
#     resp = directory_service.accept_shared_directory(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Directory Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DirectoryService::Errors::ServiceError
#       # rescues all AWS Directory Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DirectoryService
  autoload :Types, 'aws-sdk-directoryservice/types'
  autoload :ClientApi, 'aws-sdk-directoryservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-directoryservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-directoryservice/client'
  autoload :Errors, 'aws-sdk-directoryservice/errors'
  autoload :Waiters, 'aws-sdk-directoryservice/waiters'
  autoload :Resource, 'aws-sdk-directoryservice/resource'
  autoload :EndpointParameters, 'aws-sdk-directoryservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-directoryservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-directoryservice/endpoints'

  GEM_VERSION = '1.96.0'

end

require_relative 'aws-sdk-directoryservice/customizations'
