# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('RDSData', Module.new) unless Aws.const_defined?('RDSData')

# @title AWS RDS DataService
# <fullname>RDS Data API</fullname>
#          <p>Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon Aurora DB cluster. To run these
#             statements, you use the RDS Data API (Data API).</p>
#          <p>Data API is available with the following types of Aurora databases:</p>
#          <ul>
#             <li>
#                <p>Aurora PostgreSQL - Serverless v2, provisioned, and Serverless v1</p>
#             </li>
#             <li>
#                <p>Aurora MySQL - Serverless v2, provisioned, and Serverless v1</p>
#             </li>
#          </ul>
#          <p>For more information about the Data API, see
#           <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using RDS Data API</a>
#           in the <i>Amazon Aurora User Guide</i>.</p>
module Aws::RDSData
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-rdsdata/types'
require_relative 'aws-sdk-rdsdata/paginators'
require_relative 'aws-sdk-rdsdata/schema'
require_relative 'aws-sdk-rdsdata/auth_parameters'
require_relative 'aws-sdk-rdsdata/auth_resolver'
require_relative 'aws-sdk-rdsdata/client'
require_relative 'aws-sdk-rdsdata/customizations'
require_relative 'aws-sdk-rdsdata/errors'
require_relative 'aws-sdk-rdsdata/endpoint_parameters'
require_relative 'aws-sdk-rdsdata/endpoint_provider'
require_relative 'aws-sdk-rdsdata/waiters'
