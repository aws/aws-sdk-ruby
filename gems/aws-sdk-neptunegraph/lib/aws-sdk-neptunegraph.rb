# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-neptunegraph/types'
require_relative 'aws-sdk-neptunegraph/client_api'
require_relative 'aws-sdk-neptunegraph/plugins/endpoints.rb'
require_relative 'aws-sdk-neptunegraph/client'
require_relative 'aws-sdk-neptunegraph/errors'
require_relative 'aws-sdk-neptunegraph/waiters'
require_relative 'aws-sdk-neptunegraph/resource'
require_relative 'aws-sdk-neptunegraph/endpoint_parameters'
require_relative 'aws-sdk-neptunegraph/endpoint_provider'
require_relative 'aws-sdk-neptunegraph/endpoints'
require_relative 'aws-sdk-neptunegraph/customizations'

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
#     resp = neptune_graph.cancel_import_task(params)
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

  GEM_VERSION = '1.2.0'

end
