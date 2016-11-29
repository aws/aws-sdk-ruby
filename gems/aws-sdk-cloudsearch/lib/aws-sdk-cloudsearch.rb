# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-cloudsearch/types'
require_relative 'aws-sdk-cloudsearch/client_api'
require_relative 'aws-sdk-cloudsearch/client'
require_relative 'aws-sdk-cloudsearch/errors'
require_relative 'aws-sdk-cloudsearch/resource'
require_relative 'aws-sdk-cloudsearch/customizations'

module Aws
  # @service
  # This module provides support for Amazon CloudSearch, which shipped in `aws-sdk-cloudsearch` gem.
  #
  # # Aws::CloudSearch::Client
  #
  # The {Aws::CloudSearch::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cloudsearch = Aws::CloudSearch::Client.new
  #     resp = cloudsearch.build_suggesters(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CloudSearch::Errors
  #
  # Errors returned from Amazon CloudSearch all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudSearch::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CloudSearch

    GEM_VERSION = '1.0.0.rc1'

  end
end
