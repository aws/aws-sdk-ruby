# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:interconnect)

# This module provides support for Interconnect. This module is available in the
# `aws-sdk-interconnect` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     interconnect = Aws::Interconnect::Client.new
#     resp = interconnect.accept_connection_proposal(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Interconnect are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Interconnect::Errors::ServiceError
#       # rescues all Interconnect API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Interconnect
  autoload :Types, 'aws-sdk-interconnect/types'
  autoload :ClientApi, 'aws-sdk-interconnect/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-interconnect/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-interconnect/client'
  autoload :Errors, 'aws-sdk-interconnect/errors'
  autoload :Waiters, 'aws-sdk-interconnect/waiters'
  autoload :Resource, 'aws-sdk-interconnect/resource'
  autoload :EndpointParameters, 'aws-sdk-interconnect/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-interconnect/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-interconnect/endpoints'

  GEM_VERSION = '1.4.0'

end

require_relative 'aws-sdk-interconnect/customizations'
