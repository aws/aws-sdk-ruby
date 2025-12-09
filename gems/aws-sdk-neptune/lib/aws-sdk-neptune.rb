# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:neptune)

# This module provides support for Amazon Neptune. This module is available in the
# `aws-sdk-neptune` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     neptune = Aws::Neptune::Client.new
#     resp = neptune.add_role_to_db_cluster(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Neptune are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Neptune::Errors::ServiceError
#       # rescues all Amazon Neptune API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Neptune
  autoload :Types, 'aws-sdk-neptune/types'
  autoload :ClientApi, 'aws-sdk-neptune/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-neptune/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-neptune/client'
  autoload :Errors, 'aws-sdk-neptune/errors'
  autoload :Waiters, 'aws-sdk-neptune/waiters'
  autoload :Resource, 'aws-sdk-neptune/resource'
  autoload :EndpointParameters, 'aws-sdk-neptune/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-neptune/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-neptune/endpoints'

  GEM_VERSION = '1.96.0'

end

require_relative 'aws-sdk-neptune/customizations'
