# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:rtbfabric)

# This module provides support for RTBFabric. This module is available in the
# `aws-sdk-rtbfabric` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     rtb_fabric = Aws::RTBFabric::Client.new
#     resp = rtb_fabric.accept_link(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from RTBFabric are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RTBFabric::Errors::ServiceError
#       # rescues all RTBFabric API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RTBFabric
  autoload :Types, 'aws-sdk-rtbfabric/types'
  autoload :ClientApi, 'aws-sdk-rtbfabric/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-rtbfabric/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-rtbfabric/client'
  autoload :Errors, 'aws-sdk-rtbfabric/errors'
  autoload :Waiters, 'aws-sdk-rtbfabric/waiters'
  autoload :Resource, 'aws-sdk-rtbfabric/resource'
  autoload :EndpointParameters, 'aws-sdk-rtbfabric/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-rtbfabric/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-rtbfabric/endpoints'

  GEM_VERSION = '1.4.0'

end

require_relative 'aws-sdk-rtbfabric/customizations'
