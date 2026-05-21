# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:wickr)

# This module provides support for AWS Wickr Admin API. This module is available in the
# `aws-sdk-wickr` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     wickr = Aws::Wickr::Client.new
#     resp = wickr.batch_create_user(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Wickr Admin API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Wickr::Errors::ServiceError
#       # rescues all AWS Wickr Admin API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Wickr
  autoload :Types, 'aws-sdk-wickr/types'
  autoload :ClientApi, 'aws-sdk-wickr/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-wickr/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-wickr/client'
  autoload :Errors, 'aws-sdk-wickr/errors'
  autoload :Waiters, 'aws-sdk-wickr/waiters'
  autoload :Resource, 'aws-sdk-wickr/resource'
  autoload :EndpointParameters, 'aws-sdk-wickr/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-wickr/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-wickr/endpoints'

  GEM_VERSION = '1.7.0'

end

require_relative 'aws-sdk-wickr/customizations'
