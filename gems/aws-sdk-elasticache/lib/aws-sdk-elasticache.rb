# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-elasticache/types'
require_relative 'aws-sdk-elasticache/client_api'
require_relative 'aws-sdk-elasticache/client'
require_relative 'aws-sdk-elasticache/errors'
require_relative 'aws-sdk-elasticache/waiters'
require_relative 'aws-sdk-elasticache/resource'
require_relative 'aws-sdk-elasticache/customizations'

# This module provides support for Amazon ElastiCache. This module is available in the
# `aws-sdk-elasticache` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
# See {Client} for more information.
#
# # Errors
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
#
# @service
module Aws::ElastiCache

  GEM_VERSION = '1.7.0'

end
