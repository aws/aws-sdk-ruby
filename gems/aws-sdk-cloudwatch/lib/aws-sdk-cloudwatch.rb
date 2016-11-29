# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-cloudwatch/types'
require_relative 'aws-sdk-cloudwatch/client_api'
require_relative 'aws-sdk-cloudwatch/client'
require_relative 'aws-sdk-cloudwatch/errors'
require_relative 'aws-sdk-cloudwatch/waiters'
require_relative 'aws-sdk-cloudwatch/resource'
require_relative 'aws-sdk-cloudwatch/alarm'
require_relative 'aws-sdk-cloudwatch/metric'
require_relative 'aws-sdk-cloudwatch/customizations'

module Aws
  # @service
  # This module provides support for Amazon CloudWatch, which shipped in `aws-sdk-cloudwatch` gem.
  #
  # # Aws::CloudWatch::Client
  #
  # The {Aws::CloudWatch::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cloudwatch = Aws::CloudWatch::Client.new
  #     resp = cloudwatch.delete_alarms(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CloudWatch::Errors
  #
  # Errors returned from Amazon CloudWatch all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudWatch::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CloudWatch

    GEM_VERSION = '1.0.0.rc1'

  end
end
