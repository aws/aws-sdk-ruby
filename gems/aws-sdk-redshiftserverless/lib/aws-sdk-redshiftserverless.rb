# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('RedshiftServerless', Module.new) unless Aws.const_defined?('RedshiftServerless')

# @title Redshift Serverless
# <p>This is an interface reference for Amazon Redshift Serverless. It contains documentation for one of the programming or command line interfaces you can use to manage Amazon Redshift Serverless. </p> <p>Amazon Redshift Serverless automatically provisions data warehouse capacity and intelligently scales the underlying resources based on workload demands. Amazon Redshift Serverless adjusts capacity in seconds to deliver consistently high performance and simplified operations for even the most demanding and volatile workloads. Amazon Redshift Serverless lets you focus on using your data to acquire new insights for your business and customers. </p> <p> To learn more about Amazon Redshift Serverless, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-whatis.html">What is Amazon Redshift Serverless?</a>.</p>
module Aws::RedshiftServerless
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-redshiftserverless/types'
require_relative 'aws-sdk-redshiftserverless/paginators'
require_relative 'aws-sdk-redshiftserverless/schema'
require_relative 'aws-sdk-redshiftserverless/auth_parameters'
require_relative 'aws-sdk-redshiftserverless/auth_resolver'
require_relative 'aws-sdk-redshiftserverless/client'
require_relative 'aws-sdk-redshiftserverless/errors'
require_relative 'aws-sdk-redshiftserverless/endpoint_parameters'
require_relative 'aws-sdk-redshiftserverless/endpoint_provider'
require_relative 'aws-sdk-redshiftserverless/waiters'
require_relative 'aws-sdk-redshiftserverless/customizations'
