# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:appintegrationsservice)

# This module provides support for Amazon AppIntegrations Service. This module is available in the
# `aws-sdk-appintegrationsservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_integrations_service = Aws::AppIntegrationsService::Client.new
#     resp = app_integrations_service.create_application(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon AppIntegrations Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppIntegrationsService::Errors::ServiceError
#       # rescues all Amazon AppIntegrations Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppIntegrationsService
  autoload :Types, 'aws-sdk-appintegrationsservice/types'
  autoload :ClientApi, 'aws-sdk-appintegrationsservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-appintegrationsservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-appintegrationsservice/client'
  autoload :Errors, 'aws-sdk-appintegrationsservice/errors'
  autoload :Resource, 'aws-sdk-appintegrationsservice/resource'
  autoload :EndpointParameters, 'aws-sdk-appintegrationsservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-appintegrationsservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-appintegrationsservice/endpoints'

  GEM_VERSION = '1.55.0'

end

require_relative 'aws-sdk-appintegrationsservice/customizations'
