# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:entityresolution)

# This module provides support for AWS EntityResolution. This module is available in the
# `aws-sdk-entityresolution` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     entity_resolution = Aws::EntityResolution::Client.new
#     resp = entity_resolution.add_policy_statement(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS EntityResolution are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EntityResolution::Errors::ServiceError
#       # rescues all AWS EntityResolution API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EntityResolution
  autoload :Types, 'aws-sdk-entityresolution/types'
  autoload :ClientApi, 'aws-sdk-entityresolution/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-entityresolution/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-entityresolution/client'
  autoload :Errors, 'aws-sdk-entityresolution/errors'
  autoload :Resource, 'aws-sdk-entityresolution/resource'
  autoload :EndpointParameters, 'aws-sdk-entityresolution/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-entityresolution/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-entityresolution/endpoints'

  GEM_VERSION = '1.25.0'

end

require_relative 'aws-sdk-entityresolution/customizations'
