# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-elasticsearchservice/types'
require_relative 'aws-sdk-elasticsearchservice/client_api'
require_relative 'aws-sdk-elasticsearchservice/client'
require_relative 'aws-sdk-elasticsearchservice/errors'
require_relative 'aws-sdk-elasticsearchservice/waiters'
require_relative 'aws-sdk-elasticsearchservice/resource'

# customizations for generated code
require_relative 'aws-sdk-elasticsearchservice/customizations.rb'

module Aws
  # This module provides support for Amazon Elasticsearch Service.
  #
  # # Aws::ElasticsearchService::Client
  #
  # The {Aws::ElasticsearchService::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     elasticsearchservice = Aws::ElasticsearchService::Client.new
  #     resp = elasticsearchservice.add_tags(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ElasticsearchService::Errors
  #
  # Errors returned from Amazon Elasticsearch Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElasticsearchService::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ElasticsearchService

    GEM_VERSION = '1.0.0'

  end
end
