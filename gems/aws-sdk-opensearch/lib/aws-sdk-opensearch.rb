# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('OpenSearch', Module.new) unless Aws.const_defined?('OpenSearch')

# @title Amazon OpenSearch Service
# <p>Use the Amazon OpenSearch Service configuration API to create, configure, and manage
#             OpenSearch Service domains. The endpoint for configuration service requests is Region
#             specific: es.<i>region</i>.amazonaws.com. For example,
#             es.us-east-1.amazonaws.com. For a current list of supported Regions and endpoints, see
#                 <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#service-regions">Amazon Web Services service endpoints</a>.</p>
module Aws::OpenSearch
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-opensearch/types'
require_relative 'aws-sdk-opensearch/paginators'
require_relative 'aws-sdk-opensearch/schema'
require_relative 'aws-sdk-opensearch/auth_parameters'
require_relative 'aws-sdk-opensearch/auth_resolver'
require_relative 'aws-sdk-opensearch/client'
require_relative 'aws-sdk-opensearch/errors'
require_relative 'aws-sdk-opensearch/endpoint_parameters'
require_relative 'aws-sdk-opensearch/endpoint_provider'
require_relative 'aws-sdk-opensearch/waiters'
require_relative 'aws-sdk-opensearch/customizations'
