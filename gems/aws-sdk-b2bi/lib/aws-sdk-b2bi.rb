# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:b2bi)

# This module provides support for AWS B2B Data Interchange. This module is available in the
# `aws-sdk-b2bi` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     b2bi = Aws::B2bi::Client.new
#     resp = b2bi.create_capability(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS B2B Data Interchange are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::B2bi::Errors::ServiceError
#       # rescues all AWS B2B Data Interchange API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::B2bi
  autoload :Types, 'aws-sdk-b2bi/types'
  autoload :ClientApi, 'aws-sdk-b2bi/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-b2bi/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-b2bi/client'
  autoload :Errors, 'aws-sdk-b2bi/errors'
  autoload :Waiters, 'aws-sdk-b2bi/waiters'
  autoload :Resource, 'aws-sdk-b2bi/resource'
  autoload :EndpointParameters, 'aws-sdk-b2bi/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-b2bi/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-b2bi/endpoints'

  GEM_VERSION = '1.34.0'

end

require_relative 'aws-sdk-b2bi/customizations'
