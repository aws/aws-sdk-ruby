# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ivs)

# This module provides support for Amazon Interactive Video Service. This module is available in the
# `aws-sdk-ivs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ivs = Aws::IVS::Client.new
#     resp = ivs.batch_get_channel(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Interactive Video Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IVS::Errors::ServiceError
#       # rescues all Amazon Interactive Video Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IVS
  autoload :Types, 'aws-sdk-ivs/types'
  autoload :ClientApi, 'aws-sdk-ivs/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ivs/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ivs/client'
  autoload :Errors, 'aws-sdk-ivs/errors'
  autoload :Resource, 'aws-sdk-ivs/resource'
  autoload :EndpointParameters, 'aws-sdk-ivs/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ivs/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ivs/endpoints'

  GEM_VERSION = '1.76.0'

end

require_relative 'aws-sdk-ivs/customizations'
