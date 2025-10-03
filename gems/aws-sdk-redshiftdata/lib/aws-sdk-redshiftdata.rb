# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('RedshiftData', Module.new) unless Aws.const_defined?('RedshiftData')

# @title Redshift Data API Service
# <p>You can use the Amazon Redshift Data API to run queries on Amazon Redshift tables. You
#       can run SQL statements, which are committed if the statement succeeds. </p>
#          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
#        <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
#        <i>Amazon Redshift Management Guide</i>. </p>
module Aws::RedshiftData
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-redshiftdata/types'
require_relative 'aws-sdk-redshiftdata/paginators'
require_relative 'aws-sdk-redshiftdata/schema'
require_relative 'aws-sdk-redshiftdata/auth_parameters'
require_relative 'aws-sdk-redshiftdata/auth_resolver'
require_relative 'aws-sdk-redshiftdata/client'
require_relative 'aws-sdk-redshiftdata/customizations'
require_relative 'aws-sdk-redshiftdata/errors'
require_relative 'aws-sdk-redshiftdata/endpoint_parameters'
require_relative 'aws-sdk-redshiftdata/endpoint_provider'
require_relative 'aws-sdk-redshiftdata/waiters'
