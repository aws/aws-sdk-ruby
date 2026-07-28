# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:simpledbv2)

# This module provides support for Amazon SimpleDB v2. This module is available in the
# `aws-sdk-simpledbv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     simple_d_bv_2 = Aws::SimpleDBv2::Client.new
#     resp = simple_d_bv_2.get_export(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon SimpleDB v2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SimpleDBv2::Errors::ServiceError
#       # rescues all Amazon SimpleDB v2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SimpleDBv2
  autoload :Types, 'aws-sdk-simpledbv2/types'
  autoload :ClientApi, 'aws-sdk-simpledbv2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-simpledbv2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-simpledbv2/client'
  autoload :Errors, 'aws-sdk-simpledbv2/errors'
  autoload :Waiters, 'aws-sdk-simpledbv2/waiters'
  autoload :Resource, 'aws-sdk-simpledbv2/resource'
  autoload :EndpointParameters, 'aws-sdk-simpledbv2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-simpledbv2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-simpledbv2/endpoints'

  GEM_VERSION = '1.5.0'

end

require_relative 'aws-sdk-simpledbv2/customizations'
