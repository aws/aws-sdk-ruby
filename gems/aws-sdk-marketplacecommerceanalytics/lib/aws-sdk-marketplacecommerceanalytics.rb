# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-marketplacecommerceanalytics/types'
require_relative 'aws-sdk-marketplacecommerceanalytics/client_api'
require_relative 'aws-sdk-marketplacecommerceanalytics/client'
require_relative 'aws-sdk-marketplacecommerceanalytics/errors'
require_relative 'aws-sdk-marketplacecommerceanalytics/resource'
require_relative 'aws-sdk-marketplacecommerceanalytics/customizations'

# This module provides support for AWS Marketplace Commerce Analytics. This module is available in the
# `aws-sdk-marketplacecommerceanalytics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     marketplace_commerce_analytics = Aws::MarketplaceCommerceAnalytics::Client.new
#     resp = marketplace_commerce_analytics.generate_data_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Marketplace Commerce Analytics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MarketplaceCommerceAnalytics::Errors::ServiceError
#       # rescues all AWS Marketplace Commerce Analytics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MarketplaceCommerceAnalytics

  GEM_VERSION = '1.29.0'

end
