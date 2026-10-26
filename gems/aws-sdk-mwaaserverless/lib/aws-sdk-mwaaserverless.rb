# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MWAAServerless', Module.new) unless Aws.const_defined?('MWAAServerless')

# @title AmazonMWAAServerless
# <p>Amazon Managed Workflows for Apache Airflow Serverless provides a managed workflow orchestration platform for running Apache Airflow workflows in a serverless environment. You can use Amazon Managed Workflows for Apache Airflow Serverless to create, manage, and run data processing workflows without managing the underlying infrastructure, Airflow clusters, metadata databases, or scheduling overhead. The service provides secure multi-tenant run environments with automatic scaling, comprehensive logging, and integration with multiple Amazon Web Services services for orchestrating complex analytics workloads.</p>
module Aws::MWAAServerless
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-mwaaserverless/types'
require_relative 'aws-sdk-mwaaserverless/paginators'
require_relative 'aws-sdk-mwaaserverless/schema'
require_relative 'aws-sdk-mwaaserverless/auth_parameters'
require_relative 'aws-sdk-mwaaserverless/auth_resolver'
require_relative 'aws-sdk-mwaaserverless/client'
require_relative 'aws-sdk-mwaaserverless/errors'
require_relative 'aws-sdk-mwaaserverless/endpoint_parameters'
require_relative 'aws-sdk-mwaaserverless/endpoint_provider'
require_relative 'aws-sdk-mwaaserverless/waiters'
require_relative 'aws-sdk-mwaaserverless/customizations'
