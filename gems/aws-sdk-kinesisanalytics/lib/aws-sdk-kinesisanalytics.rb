# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-kinesisanalytics/types'
require_relative 'aws-sdk-kinesisanalytics/client_api'
require_relative 'aws-sdk-kinesisanalytics/client'
require_relative 'aws-sdk-kinesisanalytics/errors'
require_relative 'aws-sdk-kinesisanalytics/resource'

module Aws
  # @service
  # This module provides support for Amazon Kinesis Analytics, which shipped in `aws-sdk-kinesisanalytics` gem.
  #
  # # Aws::KinesisAnalytics::Client
  #
  # The {Aws::KinesisAnalytics::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     kinesisanalytics = Aws::KinesisAnalytics::Client.new
  #     resp = kinesisanalytics.add_application_input(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::KinesisAnalytics::Errors
  #
  # Errors returned from Amazon Kinesis Analytics all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::KinesisAnalytics::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module KinesisAnalytics

    GEM_VERSION = '1.0.0.rc1'

  end
end
