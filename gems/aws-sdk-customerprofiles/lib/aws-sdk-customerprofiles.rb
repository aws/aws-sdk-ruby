# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CustomerProfiles', Module.new) unless Aws.const_defined?('CustomerProfiles')

# @title Amazon Connect Customer Profiles
# <fullname>Amazon Connect Customer Profiles</fullname>
#          <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Customer_Profiles.html">Customer Profiles actions</a>
#                </p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Customer_Profiles.html">Customer Profiles data types</a>
#                </p>
#             </li>
#          </ul>
#          <p>Amazon Connect Customer Profiles is a unified customer profile for your contact
#          center that has pre-built connectors powered by AppFlow that make it easy to combine
#          customer information from third party applications, such as Salesforce (CRM), ServiceNow
#          (ITSM), and your enterprise resource planning (ERP), with contact history from your Amazon Connect contact center. </p>
#          <p>For more information about the Amazon Connect Customer Profiles feature, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/customer-profiles.html">Use Customer
#             Profiles</a> in the <i>Amazon Connect Administrator's Guide</i>. </p>
module Aws::CustomerProfiles
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-customerprofiles/types'
require_relative 'aws-sdk-customerprofiles/paginators'
require_relative 'aws-sdk-customerprofiles/schema'
require_relative 'aws-sdk-customerprofiles/auth_parameters'
require_relative 'aws-sdk-customerprofiles/auth_resolver'
require_relative 'aws-sdk-customerprofiles/client'
require_relative 'aws-sdk-customerprofiles/customizations'
require_relative 'aws-sdk-customerprofiles/errors'
require_relative 'aws-sdk-customerprofiles/endpoint_parameters'
require_relative 'aws-sdk-customerprofiles/endpoint_provider'
require_relative 'aws-sdk-customerprofiles/waiters'
