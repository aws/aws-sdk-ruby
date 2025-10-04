# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BCMDataExports', Module.new) unless Aws.const_defined?('BCMDataExports')

# @title AWS Billing and Cost Management Data Exports
# <p>You can use the Data Exports API to create customized exports from multiple Amazon Web Services cost management and billing datasets, such as cost and usage data and cost
#       optimization recommendations.</p>
#          <p>The Data Exports API provides the following endpoint:</p>
#          <ul>
#             <li>
#                <p>https://bcm-data-exports.us-east-1.api.aws</p>
#             </li>
#          </ul>
module Aws::BCMDataExports
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bcmdataexports/types'
require_relative 'aws-sdk-bcmdataexports/paginators'
require_relative 'aws-sdk-bcmdataexports/schema'
require_relative 'aws-sdk-bcmdataexports/auth_parameters'
require_relative 'aws-sdk-bcmdataexports/auth_resolver'
require_relative 'aws-sdk-bcmdataexports/client'
require_relative 'aws-sdk-bcmdataexports/customizations'
require_relative 'aws-sdk-bcmdataexports/errors'
require_relative 'aws-sdk-bcmdataexports/endpoint_parameters'
require_relative 'aws-sdk-bcmdataexports/endpoint_provider'
require_relative 'aws-sdk-bcmdataexports/waiters'
