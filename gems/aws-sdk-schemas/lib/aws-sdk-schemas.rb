# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:schemas)

# This module provides support for Schemas. This module is available in the
# `aws-sdk-schemas` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     schemas = Aws::Schemas::Client.new
#     resp = schemas.create_discoverer(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Schemas are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Schemas::Errors::ServiceError
#       # rescues all Schemas API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Schemas
  autoload :Types, 'aws-sdk-schemas/types'
  autoload :ClientApi, 'aws-sdk-schemas/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-schemas/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-schemas/client'
  autoload :Errors, 'aws-sdk-schemas/errors'
  autoload :Waiters, 'aws-sdk-schemas/waiters'
  autoload :Resource, 'aws-sdk-schemas/resource'
  autoload :EndpointParameters, 'aws-sdk-schemas/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-schemas/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-schemas/endpoints'

  GEM_VERSION = '1.50.0'

end

require_relative 'aws-sdk-schemas/customizations'
