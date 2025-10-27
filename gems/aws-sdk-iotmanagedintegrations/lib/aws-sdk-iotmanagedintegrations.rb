# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotmanagedintegrations)

# This module provides support for Managed integrations for AWS IoT Device Management. This module is available in the
# `aws-sdk-iotmanagedintegrations` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_managed_integrations = Aws::IoTManagedIntegrations::Client.new
#     resp = io_t_managed_integrations.create_account_association(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Managed integrations for AWS IoT Device Management are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTManagedIntegrations::Errors::ServiceError
#       # rescues all Managed integrations for AWS IoT Device Management API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTManagedIntegrations
  autoload :Types, 'aws-sdk-iotmanagedintegrations/types'
  autoload :ClientApi, 'aws-sdk-iotmanagedintegrations/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iotmanagedintegrations/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iotmanagedintegrations/client'
  autoload :Errors, 'aws-sdk-iotmanagedintegrations/errors'
  autoload :Resource, 'aws-sdk-iotmanagedintegrations/resource'
  autoload :EndpointParameters, 'aws-sdk-iotmanagedintegrations/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iotmanagedintegrations/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iotmanagedintegrations/endpoints'

  GEM_VERSION = '1.11.0'

end

require_relative 'aws-sdk-iotmanagedintegrations/customizations'
