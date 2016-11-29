# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-route53/types'
require_relative 'aws-sdk-route53/client_api'
require_relative 'aws-sdk-route53/client'
require_relative 'aws-sdk-route53/errors'
require_relative 'aws-sdk-route53/waiters'
require_relative 'aws-sdk-route53/resource'
require_relative 'aws-sdk-route53/customizations'

module Aws
  # @service
  # This module provides support for Amazon Route 53, which shipped in `aws-sdk-route53` gem.
  #
  # # Aws::Route53::Client
  #
  # The {Aws::Route53::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     route53 = Aws::Route53::Client.new
  #     resp = route53.associate_vpc_with_hosted_zone(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Route53::Errors
  #
  # Errors returned from Amazon Route 53 all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Route53::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Route53

    GEM_VERSION = '1.0.0.rc1'

  end
end
