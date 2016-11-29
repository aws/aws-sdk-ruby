# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-cloudsearchdomain/types'
require_relative 'aws-sdk-cloudsearchdomain/client_api'
require_relative 'aws-sdk-cloudsearchdomain/client'
require_relative 'aws-sdk-cloudsearchdomain/errors'
require_relative 'aws-sdk-cloudsearchdomain/resource'
require_relative 'aws-sdk-cloudsearchdomain/customizations'

module Aws
  # @service
  # This module provides support for Amazon CloudSearch Domain, which shipped in `aws-sdk-cloudsearchdomain` gem.
  #
  # # Aws::CloudSearchDomain::Client
  #
  # The {Aws::CloudSearchDomain::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cloudsearchdomain = Aws::CloudSearchDomain::Client.new
  #     resp = cloudsearchdomain.search(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CloudSearchDomain::Errors
  #
  # Errors returned from Amazon CloudSearch Domain all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudSearchDomain::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CloudSearchDomain

    GEM_VERSION = '1.0.0.rc1'

  end
end
