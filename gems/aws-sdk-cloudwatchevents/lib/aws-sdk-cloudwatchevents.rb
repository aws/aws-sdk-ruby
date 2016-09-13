# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-cloudwatchevents/types'
require_relative 'aws-sdk-cloudwatchevents/client_api'
require_relative 'aws-sdk-cloudwatchevents/client'
require_relative 'aws-sdk-cloudwatchevents/errors'
require_relative 'aws-sdk-cloudwatchevents/waiters'
require_relative 'aws-sdk-cloudwatchevents/resource'

module Aws
  # This module provides support for Amazon CloudWatch Events.
  #
  # # Aws::CloudWatchEvents::Client
  #
  # The {Aws::CloudWatchEvents::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cloudwatchevents = Aws::CloudWatchEvents::Client.new
  #     resp = cloudwatchevents.delete_rule(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CloudWatchEvents::Errors
  #
  # Errors returned from Amazon CloudWatch Events all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudWatchEvents::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CloudWatchEvents

    GEM_VERSION = '1.0.0'

  end
end
