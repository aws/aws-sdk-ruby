# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-servicecatalog/types'
require_relative 'aws-sdk-servicecatalog/client_api'
require_relative 'aws-sdk-servicecatalog/client'
require_relative 'aws-sdk-servicecatalog/errors'
require_relative 'aws-sdk-servicecatalog/resource'

module Aws
  # @service
  # This module provides support for AWS Service Catalog, which shipped in `aws-sdk-servicecatalog` gem.
  #
  # # Aws::ServiceCatalog::Client
  #
  # The {Aws::ServiceCatalog::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     servicecatalog = Aws::ServiceCatalog::Client.new
  #     resp = servicecatalog.describe_product(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ServiceCatalog::Errors
  #
  # Errors returned from AWS Service Catalog all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ServiceCatalog::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ServiceCatalog

    GEM_VERSION = '1.0.0'

  end
end
