# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:keyspacesstreams)

# This module provides support for Amazon Keyspaces Streams. This module is available in the
# `aws-sdk-keyspacesstreams` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     keyspaces_streams = Aws::KeyspacesStreams::Client.new
#     resp = keyspaces_streams.get_records(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Keyspaces Streams are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KeyspacesStreams::Errors::ServiceError
#       # rescues all Amazon Keyspaces Streams API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KeyspacesStreams
  autoload :Types, 'aws-sdk-keyspacesstreams/types'
  autoload :ClientApi, 'aws-sdk-keyspacesstreams/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-keyspacesstreams/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-keyspacesstreams/client'
  autoload :Errors, 'aws-sdk-keyspacesstreams/errors'
  autoload :Resource, 'aws-sdk-keyspacesstreams/resource'
  autoload :EndpointParameters, 'aws-sdk-keyspacesstreams/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-keyspacesstreams/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-keyspacesstreams/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-keyspacesstreams/customizations'
