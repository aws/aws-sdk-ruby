# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-elasticache/types'
require_relative 'aws-sdk-elasticache/client_api'
require_relative 'aws-sdk-elasticache/client'
require_relative 'aws-sdk-elasticache/errors'
require_relative 'aws-sdk-elasticache/waiters'
require_relative 'aws-sdk-elasticache/resource'

module Aws
  # This module provides support for Amazon ElastiCache.
  #
  # # Aws::ElastiCache::Client
  #
  # The {Aws::ElastiCache::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     elasticache = Aws::ElastiCache::Client.new
  #     resp = elasticache.add_tags_to_resource(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ElastiCache::Errors
  #
  # Errors returned from Amazon ElastiCache all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElastiCache::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ElastiCache

    GEM_VERSION = '1.0.0'

  end
end
