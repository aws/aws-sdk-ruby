# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-elasticsearchservice/types'
require_relative 'aws-sdk-elasticsearchservice/client_api'
require_relative 'aws-sdk-elasticsearchservice/client'
require_relative 'aws-sdk-elasticsearchservice/errors'
require_relative 'aws-sdk-elasticsearchservice/resource'
require_relative 'aws-sdk-elasticsearchservice/customizations'

# This module provides support for Amazon Elasticsearch Service. This module is available in the
# `aws-sdk-elasticsearchservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     elasticsearch_service = Aws::ElasticsearchService::Client.new
#     resp = elasticsearch_service.accept_inbound_cross_cluster_search_connection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elasticsearch Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ElasticsearchService::Errors::ServiceError
#       # rescues all Amazon Elasticsearch Service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::ElasticsearchService

  GEM_VERSION = '1.36.0'

end
