# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('OSIS', Module.new) unless Aws.const_defined?('OSIS')

# @title Amazon OpenSearch Ingestion
# <p>Use the Amazon OpenSearch Ingestion API to create and manage ingestion pipelines. OpenSearch Ingestion is a 
#    fully managed data collector that delivers real-time log and trace data to OpenSearch Service domains. For more information, see
#    <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ingestion.html">Getting data into your cluster using OpenSearch Ingestion</a>.</p>
module Aws::OSIS
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-osis/types'
require_relative 'aws-sdk-osis/paginators'
require_relative 'aws-sdk-osis/schema'
require_relative 'aws-sdk-osis/auth_parameters'
require_relative 'aws-sdk-osis/auth_resolver'
require_relative 'aws-sdk-osis/client'
require_relative 'aws-sdk-osis/customizations'
require_relative 'aws-sdk-osis/errors'
require_relative 'aws-sdk-osis/endpoint_parameters'
require_relative 'aws-sdk-osis/endpoint_provider'
require_relative 'aws-sdk-osis/waiters'
