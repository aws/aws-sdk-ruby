# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-ses/types'
require_relative 'aws-sdk-ses/client_api'
require_relative 'aws-sdk-ses/client'
require_relative 'aws-sdk-ses/errors'
require_relative 'aws-sdk-ses/waiters'
require_relative 'aws-sdk-ses/resource'

module Aws
  # @service
  # This module provides support for Amazon Simple Email Service, which shipped in `aws-sdk-ses` gem.
  #
  # # Aws::SES::Client
  #
  # The {Aws::SES::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     ses = Aws::SES::Client.new
  #     resp = ses.clone_receipt_rule_set(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::SES::Errors
  #
  # Errors returned from Amazon Simple Email Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SES::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module SES

    GEM_VERSION = '1.0.0'

  end
end
