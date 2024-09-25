# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'

Aws::Plugins::GlobalConfiguration.add_identifier(:codecatalyst)

# This module provides support for Amazon CodeCatalyst. This module is available in the
# `aws-sdk-codecatalyst` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_catalyst = Aws::CodeCatalyst::Client.new
#     resp = code_catalyst.create_access_token(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CodeCatalyst are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeCatalyst::Errors::ServiceError
#       # rescues all Amazon CodeCatalyst API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeCatalyst
  autoload :Types, 'aws-sdk-codecatalyst/types'
  autoload :ClientApi, 'aws-sdk-codecatalyst/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codecatalyst/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codecatalyst/client'
  autoload :Errors, 'aws-sdk-codecatalyst/errors'
  autoload :Waiters, 'aws-sdk-codecatalyst/waiters'
  autoload :Resource, 'aws-sdk-codecatalyst/resource'
  autoload :EndpointParameters, 'aws-sdk-codecatalyst/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codecatalyst/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codecatalyst/endpoints'

  GEM_VERSION = '1.29.0'

end

require_relative 'aws-sdk-codecatalyst/customizations'
