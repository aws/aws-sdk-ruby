# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CostExplorer', Module.new) unless Aws.const_defined?('CostExplorer')

# @title AWS Cost Explorer Service
# <p>You can use the Cost Explorer API to programmatically query your cost and usage data.
#       You can query for aggregated data such as total monthly costs or total daily usage. You can
#       also query for granular data. This might include the number of daily write operations for
#       Amazon DynamoDB database tables in your production environment. </p>
#          <p>Service Endpoint</p>
#          <p>The Cost Explorer API provides the following endpoint:</p>
#          <ul>
#             <li>
#                <p>
#                   <code>https://ce.us-east-1.amazonaws.com</code>
#                </p>
#             </li>
#          </ul>
#          <p>For information about the costs that are associated with the Cost Explorer API, see
#         <a href="http://aws.amazon.com/aws-cost-management/pricing/">Amazon Web Services Cost
#         Management Pricing</a>.</p>
module Aws::CostExplorer
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-costexplorer/types'
require_relative 'aws-sdk-costexplorer/paginators'
require_relative 'aws-sdk-costexplorer/schema'
require_relative 'aws-sdk-costexplorer/auth_parameters'
require_relative 'aws-sdk-costexplorer/auth_resolver'
require_relative 'aws-sdk-costexplorer/client'
require_relative 'aws-sdk-costexplorer/customizations'
require_relative 'aws-sdk-costexplorer/errors'
require_relative 'aws-sdk-costexplorer/endpoint_parameters'
require_relative 'aws-sdk-costexplorer/endpoint_provider'
require_relative 'aws-sdk-costexplorer/waiters'
