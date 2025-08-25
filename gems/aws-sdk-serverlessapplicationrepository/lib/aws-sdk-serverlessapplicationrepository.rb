# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:serverlessapplicationrepository)

# This module provides support for AWSServerlessApplicationRepository. This module is available in the
# `aws-sdk-serverlessapplicationrepository` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     serverless_application_repository = Aws::ServerlessApplicationRepository::Client.new
#     resp = serverless_application_repository.create_application(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWSServerlessApplicationRepository are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ServerlessApplicationRepository::Errors::ServiceError
#       # rescues all AWSServerlessApplicationRepository API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ServerlessApplicationRepository
  autoload :Types, 'aws-sdk-serverlessapplicationrepository/types'
  autoload :ClientApi, 'aws-sdk-serverlessapplicationrepository/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-serverlessapplicationrepository/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-serverlessapplicationrepository/client'
  autoload :Errors, 'aws-sdk-serverlessapplicationrepository/errors'
  autoload :Resource, 'aws-sdk-serverlessapplicationrepository/resource'
  autoload :EndpointParameters, 'aws-sdk-serverlessapplicationrepository/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-serverlessapplicationrepository/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-serverlessapplicationrepository/endpoints'

  GEM_VERSION = '1.81.0'

end

require_relative 'aws-sdk-serverlessapplicationrepository/customizations'
