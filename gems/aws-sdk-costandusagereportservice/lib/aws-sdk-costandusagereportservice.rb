# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CostandUsageReportService', Module.new) unless Aws.const_defined?('CostandUsageReportService')

# @title AWS Cost and Usage Report Service
# <p>You can use the Amazon Web Services Cost and Usage Report API to programmatically create, query, and delete 
#       Amazon Web Services Cost and Usage Report definitions.</p>
#          <p>Amazon Web Services Cost and Usage Report track the monthly Amazon Web Services costs and usage 
#       associated with your Amazon Web Services account.
#     
#         The report contains line items for each unique combination of Amazon Web Services product,
#         usage type, and operation that your Amazon Web Services account uses. 
#         
#         You can configure the Amazon Web Services Cost and Usage Report to show only the data that you want, using the
#       Amazon Web Services Cost and Usage Report API.</p>
#          <p>Service Endpoint</p>
#          <p>The Amazon Web Services Cost and Usage Report API provides the following endpoint:</p>
#          <ul>
#             <li>
#                <p>cur.us-east-1.amazonaws.com</p>
#             </li>
#          </ul>
module Aws::CostandUsageReportService
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-costandusagereportservice/types'
require_relative 'aws-sdk-costandusagereportservice/paginators'
require_relative 'aws-sdk-costandusagereportservice/schema'
require_relative 'aws-sdk-costandusagereportservice/auth_parameters'
require_relative 'aws-sdk-costandusagereportservice/auth_resolver'
require_relative 'aws-sdk-costandusagereportservice/client'
require_relative 'aws-sdk-costandusagereportservice/customizations'
require_relative 'aws-sdk-costandusagereportservice/errors'
require_relative 'aws-sdk-costandusagereportservice/endpoint_parameters'
require_relative 'aws-sdk-costandusagereportservice/endpoint_provider'
require_relative 'aws-sdk-costandusagereportservice/waiters'
