# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Athena', Module.new) unless Aws.const_defined?('Athena')

# @title Amazon Athena
# <p>Amazon Athena is an interactive query service that lets you use standard SQL
#             to analyze data directly in Amazon S3. You can point Athena at your
#             data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena is serverless, so there is no infrastructure to set up or manage. You pay
#             only for the queries you run. Athena scales automatically—executing queries
#             in parallel—so results are fast, even with large datasets and complex queries. For more
#             information, see <a href="http://docs.aws.amazon.com/athena/latest/ug/what-is.html">What is Amazon Athena</a> in the <i>Amazon Athena User
#                 Guide</i>.</p>
#          <p>If you connect to Athena using the JDBC driver, use version 1.1.0 of the
#             driver or later with the Amazon Athena API. Earlier version drivers do not
#             support the API. For more information and to download the driver, see <a href="https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html">Accessing
#                     Amazon Athena with JDBC</a>.</p>
module Aws::Athena
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-athena/types'
require_relative 'aws-sdk-athena/paginators'
require_relative 'aws-sdk-athena/schema'
require_relative 'aws-sdk-athena/auth_parameters'
require_relative 'aws-sdk-athena/auth_resolver'
require_relative 'aws-sdk-athena/client'
require_relative 'aws-sdk-athena/customizations'
require_relative 'aws-sdk-athena/errors'
require_relative 'aws-sdk-athena/endpoint_parameters'
require_relative 'aws-sdk-athena/endpoint_provider'
require_relative 'aws-sdk-athena/waiters'
