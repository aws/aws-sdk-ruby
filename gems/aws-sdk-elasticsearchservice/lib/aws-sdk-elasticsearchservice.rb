# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ElasticsearchService', Module.new) unless Aws.const_defined?('ElasticsearchService')

# @title Amazon Elasticsearch Service
# <fullname>Amazon Elasticsearch Configuration Service</fullname>
#       <p>Use the Amazon Elasticsearch Configuration API to create, configure, and manage Elasticsearch domains.</p>
#       <p>For sample code that uses the Configuration API, see the <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-configuration-samples.html">Amazon Elasticsearch Service Developer Guide</a>.
#       The guide also contains <a href="https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-request-signing.html">sample code for sending signed HTTP requests to the Elasticsearch APIs</a>.</p>
#       <p>The endpoint for configuration service requests is region-specific: es.<i>region</i>.amazonaws.com.
#          For example, es.us-east-1.amazonaws.com. For a current list of supported regions and endpoints,
#          see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions" target="_blank">Regions and Endpoints</a>.</p>
module Aws::ElasticsearchService
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-elasticsearchservice/types'
require_relative 'aws-sdk-elasticsearchservice/paginators'
require_relative 'aws-sdk-elasticsearchservice/schema'
require_relative 'aws-sdk-elasticsearchservice/auth_parameters'
require_relative 'aws-sdk-elasticsearchservice/auth_resolver'
require_relative 'aws-sdk-elasticsearchservice/client'
require_relative 'aws-sdk-elasticsearchservice/customizations'
require_relative 'aws-sdk-elasticsearchservice/errors'
require_relative 'aws-sdk-elasticsearchservice/endpoint_parameters'
require_relative 'aws-sdk-elasticsearchservice/endpoint_provider'
require_relative 'aws-sdk-elasticsearchservice/waiters'
