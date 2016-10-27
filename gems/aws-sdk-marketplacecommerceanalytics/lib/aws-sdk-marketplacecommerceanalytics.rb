# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-marketplacecommerceanalytics/types'
require_relative 'aws-sdk-marketplacecommerceanalytics/client_api'
require_relative 'aws-sdk-marketplacecommerceanalytics/client'
require_relative 'aws-sdk-marketplacecommerceanalytics/errors'
require_relative 'aws-sdk-marketplacecommerceanalytics/waiters'
require_relative 'aws-sdk-marketplacecommerceanalytics/resource'

module Aws
  # @service
  # This module provides support for AWS Marketplace Commerce Analytics, which shipped in `aws-sdk-marketplacecommerceanalytics` gem.
  #
  # # Aws::MarketplaceCommerceAnalytics::Client
  #
  # The {Aws::MarketplaceCommerceAnalytics::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     marketplacecommerceanalytics = Aws::MarketplaceCommerceAnalytics::Client.new
  #     resp = marketplacecommerceanalytics.generate_data_set(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::MarketplaceCommerceAnalytics::Errors
  #
  # Errors returned from AWS Marketplace Commerce Analytics all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MarketplaceCommerceAnalytics::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module MarketplaceCommerceAnalytics

    GEM_VERSION = '1.0.0'

  end
end
