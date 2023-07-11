# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-appintegrationsservice/types'
require_relative 'aws-sdk-appintegrationsservice/client_api'
require_relative 'aws-sdk-appintegrationsservice/plugins/endpoints.rb'
require_relative 'aws-sdk-appintegrationsservice/client'
require_relative 'aws-sdk-appintegrationsservice/errors'
require_relative 'aws-sdk-appintegrationsservice/resource'
require_relative 'aws-sdk-appintegrationsservice/endpoint_parameters'
require_relative 'aws-sdk-appintegrationsservice/endpoint_provider'
require_relative 'aws-sdk-appintegrationsservice/endpoints'
require_relative 'aws-sdk-appintegrationsservice/customizations'

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
#     resp = app_integrations_service.create_data_integration(params)
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

  GEM_VERSION = '1.21.0'

end
