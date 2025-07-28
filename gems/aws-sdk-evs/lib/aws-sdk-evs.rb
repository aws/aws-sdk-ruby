# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:evs)

# This module provides support for Amazon Elastic VMware Service. This module is available in the
# `aws-sdk-evs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     evs = Aws::Evs::Client.new
#     resp = evs.create_environment(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elastic VMware Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Evs::Errors::ServiceError
#       # rescues all Amazon Elastic VMware Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Evs
  autoload :Types, 'aws-sdk-evs/types'
  autoload :ClientApi, 'aws-sdk-evs/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-evs/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-evs/client'
  autoload :Errors, 'aws-sdk-evs/errors'
  autoload :Waiters, 'aws-sdk-evs/waiters'
  autoload :Resource, 'aws-sdk-evs/resource'
  autoload :EndpointParameters, 'aws-sdk-evs/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-evs/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-evs/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-evs/customizations'
