# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:keyspaces)

# This module provides support for Amazon Keyspaces. This module is available in the
# `aws-sdk-keyspaces` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     keyspaces = Aws::Keyspaces::Client.new
#     resp = keyspaces.create_keyspace(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Keyspaces are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Keyspaces::Errors::ServiceError
#       # rescues all Amazon Keyspaces API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Keyspaces
  autoload :Types, 'aws-sdk-keyspaces/types'
  autoload :ClientApi, 'aws-sdk-keyspaces/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-keyspaces/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-keyspaces/client'
  autoload :Errors, 'aws-sdk-keyspaces/errors'
  autoload :Waiters, 'aws-sdk-keyspaces/waiters'
  autoload :Resource, 'aws-sdk-keyspaces/resource'
  autoload :EndpointParameters, 'aws-sdk-keyspaces/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-keyspaces/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-keyspaces/endpoints'

  GEM_VERSION = '1.49.0'

end

require_relative 'aws-sdk-keyspaces/customizations'
