# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-cloudwatchlogs/types'
require_relative 'aws-sdk-cloudwatchlogs/client_api'
require_relative 'aws-sdk-cloudwatchlogs/client'
require_relative 'aws-sdk-cloudwatchlogs/errors'
require_relative 'aws-sdk-cloudwatchlogs/resource'
require_relative 'aws-sdk-cloudwatchlogs/customizations'

module Aws
  # @service
  # This module provides support for Amazon CloudWatch Logs, which shipped in `aws-sdk-cloudwatchlogs` gem.
  #
  # # Aws::CloudWatchLogs::Client
  #
  # The {Aws::CloudWatchLogs::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cloudwatchlogs = Aws::CloudWatchLogs::Client.new
  #     resp = cloudwatchlogs.cancel_export_task(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CloudWatchLogs::Errors
  #
  # Errors returned from Amazon CloudWatch Logs all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudWatchLogs::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CloudWatchLogs

    GEM_VERSION = '1.0.0.rc1'

  end
end
