# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:identitystore)

# This module provides support for AWS SSO Identity Store. This module is available in the
# `aws-sdk-identitystore` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     identity_store = Aws::IdentityStore::Client.new
#     resp = identity_store.create_group(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS SSO Identity Store are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IdentityStore::Errors::ServiceError
#       # rescues all AWS SSO Identity Store API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IdentityStore
  autoload :Types, 'aws-sdk-identitystore/types'
  autoload :ClientApi, 'aws-sdk-identitystore/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-identitystore/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-identitystore/client'
  autoload :Errors, 'aws-sdk-identitystore/errors'
  autoload :Resource, 'aws-sdk-identitystore/resource'
  autoload :EndpointParameters, 'aws-sdk-identitystore/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-identitystore/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-identitystore/endpoints'

  GEM_VERSION = '1.61.0'

end

require_relative 'aws-sdk-identitystore/customizations'
