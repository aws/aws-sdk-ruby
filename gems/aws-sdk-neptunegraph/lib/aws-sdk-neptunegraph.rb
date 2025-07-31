# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:neptunegraph)

# This module provides support for Amazon Neptune Graph. This module is available in the
# `aws-sdk-neptunegraph` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     neptune_graph = Aws::NeptuneGraph::Client.new
#     resp = neptune_graph.cancel_export_task(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Neptune Graph are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::NeptuneGraph::Errors::ServiceError
#       # rescues all Amazon Neptune Graph API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::NeptuneGraph
  autoload :Types, 'aws-sdk-neptunegraph/types'
  autoload :ClientApi, 'aws-sdk-neptunegraph/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-neptunegraph/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-neptunegraph/client'
  autoload :Errors, 'aws-sdk-neptunegraph/errors'
  autoload :Waiters, 'aws-sdk-neptunegraph/waiters'
  autoload :Resource, 'aws-sdk-neptunegraph/resource'
  autoload :EndpointParameters, 'aws-sdk-neptunegraph/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-neptunegraph/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-neptunegraph/endpoints'

  GEM_VERSION = '1.36.0'

end

require_relative 'aws-sdk-neptunegraph/customizations'
