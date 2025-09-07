# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('OpenSearchServerless', Module.new) unless Aws.const_defined?('OpenSearchServerless')

# @title OpenSearch Service Serverless
# <p>Use the Amazon OpenSearch Serverless API to create, configure, and manage OpenSearch Serverless collections and security policies.</p> <p>OpenSearch Serverless is an on-demand, pre-provisioned serverless configuration for Amazon OpenSearch Service. OpenSearch Serverless removes the operational complexities of provisioning, configuring, and tuning your OpenSearch clusters. It enables you to easily search and analyze petabytes of data without having to worry about the underlying infrastructure and data management.</p> <p>To learn more about OpenSearch Serverless, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-overview.html">What is Amazon OpenSearch Serverless?</a> </p>
module Aws::OpenSearchServerless
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-opensearchserverless/types'
require_relative 'aws-sdk-opensearchserverless/paginators'
require_relative 'aws-sdk-opensearchserverless/schema'
require_relative 'aws-sdk-opensearchserverless/auth_parameters'
require_relative 'aws-sdk-opensearchserverless/auth_resolver'
require_relative 'aws-sdk-opensearchserverless/client'
require_relative 'aws-sdk-opensearchserverless/customizations'
require_relative 'aws-sdk-opensearchserverless/errors'
require_relative 'aws-sdk-opensearchserverless/endpoint_parameters'
require_relative 'aws-sdk-opensearchserverless/endpoint_provider'
require_relative 'aws-sdk-opensearchserverless/waiters'
