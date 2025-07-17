# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:configservice)

# This module provides support for AWS Config. This module is available in the
# `aws-sdk-configservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     config_service = Aws::ConfigService::Client.new
#     resp = config_service.associate_resource_types(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Config are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConfigService::Errors::ServiceError
#       # rescues all AWS Config API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConfigService
  autoload :Types, 'aws-sdk-configservice/types'
  autoload :ClientApi, 'aws-sdk-configservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-configservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-configservice/client'
  autoload :Errors, 'aws-sdk-configservice/errors'
  autoload :Resource, 'aws-sdk-configservice/resource'
  autoload :EndpointParameters, 'aws-sdk-configservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-configservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-configservice/endpoints'

  GEM_VERSION = '1.131.0'

end

require_relative 'aws-sdk-configservice/customizations'
