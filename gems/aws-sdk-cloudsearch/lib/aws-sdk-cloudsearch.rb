# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-cloudsearch/types'
require_relative 'aws-sdk-cloudsearch/client_api'
require_relative 'aws-sdk-cloudsearch/client'
require_relative 'aws-sdk-cloudsearch/errors'
require_relative 'aws-sdk-cloudsearch/waiters'
require_relative 'aws-sdk-cloudsearch/resource'

# customizations for generated code
require_relative 'aws-sdk-cloudsearch/customizations.rb'

module Aws
  # This module provides support for Amazon CloudSearch.
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

    GEM_VERSION = '1.0.0'

  end
end
