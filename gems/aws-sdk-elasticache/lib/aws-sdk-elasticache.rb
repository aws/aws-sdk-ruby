# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:elasticache)

# This module provides support for Amazon ElastiCache. This module is available in the
# `aws-sdk-elasticache` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     elasticache = Aws::ElastiCache::Client.new
#     resp = elasticache.add_tags_to_resource(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon ElastiCache are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ElastiCache::Errors::ServiceError
#       # rescues all Amazon ElastiCache API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ElastiCache
  autoload :Types, 'aws-sdk-elasticache/types'
  autoload :ClientApi, 'aws-sdk-elasticache/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-elasticache/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-elasticache/client'
  autoload :Errors, 'aws-sdk-elasticache/errors'
  autoload :Waiters, 'aws-sdk-elasticache/waiters'
  autoload :Resource, 'aws-sdk-elasticache/resource'
  autoload :EndpointParameters, 'aws-sdk-elasticache/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-elasticache/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-elasticache/endpoints'

  GEM_VERSION = '1.130.0'

end

require_relative 'aws-sdk-elasticache/customizations'
