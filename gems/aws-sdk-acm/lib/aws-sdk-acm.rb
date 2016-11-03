# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-acm/types'
require_relative 'aws-sdk-acm/client_api'
require_relative 'aws-sdk-acm/client'
require_relative 'aws-sdk-acm/errors'
require_relative 'aws-sdk-acm/resource'

module Aws
  # @service
  # This module provides support for AWS Certificate Manager, which shipped in `aws-sdk-acm` gem.
  #
  # # Aws::ACM::Client
  #
  # The {Aws::ACM::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     acm = Aws::ACM::Client.new
  #     resp = acm.add_tags_to_certificate(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ACM::Errors
  #
  # Errors returned from AWS Certificate Manager all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ACM::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ACM

    GEM_VERSION = '1.0.0'

  end
end
