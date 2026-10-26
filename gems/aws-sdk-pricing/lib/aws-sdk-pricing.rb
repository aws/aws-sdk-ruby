# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Pricing', Module.new) unless Aws.const_defined?('Pricing')

# @title AWS Price List Service
# <p>The Amazon Web Services Price List API is a centralized and convenient way to programmatically query Amazon Web Services for services, products, and pricing information. The Amazon Web Services Price List uses standardized product attributes such as <code>Location</code>, <code>Storage Class</code>, and <code>Operating System</code>, and provides prices at the SKU level. You can use the Amazon Web Services Price List to do the following:</p> <ul> <li> <p>Build cost control and scenario planning tools</p> </li> <li> <p>Reconcile billing data</p> </li> <li> <p>Forecast future spend for budgeting purposes</p> </li> <li> <p>Provide cost benefit analysis that compare your internal workloads with Amazon Web Services</p> </li> </ul> <p>Use <code>GetServices</code> without a service code to retrieve the service codes for all Amazon Web Services services, then <code>GetServices</code> with a service code to retrieve the attribute names for that service. After you have the service code and attribute names, you can use <code>GetAttributeValues</code> to see what values are available for an attribute. With the service code and an attribute name and value, you can use <code>GetProducts</code> to find specific products that you're interested in, such as an <code>AmazonEC2</code> instance, with a <code>Provisioned IOPS</code> <code>volumeType</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html">Using the Amazon Web Services Price List API</a> in the <i>Billing User Guide</i>.</p>
module Aws::Pricing
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-pricing/types'
require_relative 'aws-sdk-pricing/paginators'
require_relative 'aws-sdk-pricing/schema'
require_relative 'aws-sdk-pricing/auth_parameters'
require_relative 'aws-sdk-pricing/auth_resolver'
require_relative 'aws-sdk-pricing/client'
require_relative 'aws-sdk-pricing/errors'
require_relative 'aws-sdk-pricing/endpoint_parameters'
require_relative 'aws-sdk-pricing/endpoint_provider'
require_relative 'aws-sdk-pricing/waiters'
require_relative 'aws-sdk-pricing/customizations'
