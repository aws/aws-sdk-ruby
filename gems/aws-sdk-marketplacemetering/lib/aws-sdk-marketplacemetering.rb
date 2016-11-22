# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-marketplacemetering/types'
require_relative 'aws-sdk-marketplacemetering/client_api'
require_relative 'aws-sdk-marketplacemetering/client'
require_relative 'aws-sdk-marketplacemetering/errors'
require_relative 'aws-sdk-marketplacemetering/resource'

module Aws
  # @service
  # This module provides support for AWSMarketplace Metering, which shipped in `aws-sdk-marketplacemetering` gem.
  #
  # # Aws::MarketplaceMetering::Client
  #
  # The {Aws::MarketplaceMetering::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     marketplacemetering = Aws::MarketplaceMetering::Client.new
  #     resp = marketplacemetering.meter_usage(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::MarketplaceMetering::Errors
  #
  # Errors returned from AWSMarketplace Metering all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MarketplaceMetering::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module MarketplaceMetering

    GEM_VERSION = '1.0.0.rc1'

  end
end
