# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MarketplaceCommerceAnalytics', Module.new) unless Aws.const_defined?('MarketplaceCommerceAnalytics')

# @title AWS Marketplace Commerce Analytics
# Provides AWS Marketplace business intelligence data on-demand.
module Aws::MarketplaceCommerceAnalytics
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-marketplacecommerceanalytics/types'
require_relative 'aws-sdk-marketplacecommerceanalytics/paginators'
require_relative 'aws-sdk-marketplacecommerceanalytics/schema'
require_relative 'aws-sdk-marketplacecommerceanalytics/auth_parameters'
require_relative 'aws-sdk-marketplacecommerceanalytics/auth_resolver'
require_relative 'aws-sdk-marketplacecommerceanalytics/client'
require_relative 'aws-sdk-marketplacecommerceanalytics/customizations'
require_relative 'aws-sdk-marketplacecommerceanalytics/errors'
require_relative 'aws-sdk-marketplacecommerceanalytics/endpoint_parameters'
require_relative 'aws-sdk-marketplacecommerceanalytics/endpoint_provider'
require_relative 'aws-sdk-marketplacecommerceanalytics/waiters'
