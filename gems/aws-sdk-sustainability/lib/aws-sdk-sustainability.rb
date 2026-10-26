# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Sustainability', Module.new) unless Aws.const_defined?('Sustainability')

# @title AWS Sustainability
# <p>The AWS Sustainability service provides programmatic access to estimated environmental impact data for your Amazon Web Services usage. Use the AWS Sustainability service to retrieve, analyze, and track the environmental impact of your cloud infrastructure over time. </p> <p>With the AWS Sustainability service, you can:</p> <ul> <li> <p>Retrieve estimated carbon emissions and water allocation for your Amazon Web Services usage across different time periods </p> </li> <li> <p>Group environmental impact data by dimensions such as account, region, and service</p> </li> <li> <p>Filter environmental impact data to focus on specific accounts, regions, or services</p> </li> <li> <p>Access multiple carbon emissions calculation methodologies including Location-based Method (LBM) and Market-based Method (MBM) </p> </li> <li> <p>Aggregate environmental impact data at various time granularities including monthly, quarterly, and yearly periods </p> </li> </ul> <p> The API supports pagination for efficient data retrieval and provides dimension values to help you understand the available grouping and filtering options for your account. </p>
module Aws::Sustainability
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-sustainability/types'
require_relative 'aws-sdk-sustainability/paginators'
require_relative 'aws-sdk-sustainability/schema'
require_relative 'aws-sdk-sustainability/auth_parameters'
require_relative 'aws-sdk-sustainability/auth_resolver'
require_relative 'aws-sdk-sustainability/client'
require_relative 'aws-sdk-sustainability/errors'
require_relative 'aws-sdk-sustainability/endpoint_parameters'
require_relative 'aws-sdk-sustainability/endpoint_provider'
require_relative 'aws-sdk-sustainability/waiters'
require_relative 'aws-sdk-sustainability/customizations'
