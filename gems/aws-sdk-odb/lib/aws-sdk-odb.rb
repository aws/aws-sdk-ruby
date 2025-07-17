# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:odb)

# This module provides support for odb. This module is available in the
# `aws-sdk-odb` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     odb = Aws::Odb::Client.new
#     resp = odb.accept_marketplace_registration(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from odb are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Odb::Errors::ServiceError
#       # rescues all odb API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Odb
  autoload :Types, 'aws-sdk-odb/types'
  autoload :ClientApi, 'aws-sdk-odb/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-odb/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-odb/client'
  autoload :Errors, 'aws-sdk-odb/errors'
  autoload :Waiters, 'aws-sdk-odb/waiters'
  autoload :Resource, 'aws-sdk-odb/resource'
  autoload :EndpointParameters, 'aws-sdk-odb/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-odb/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-odb/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-odb/customizations'
