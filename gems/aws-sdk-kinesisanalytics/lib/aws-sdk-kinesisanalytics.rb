# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
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
require_relative 'aws-sdk-kinesisanalytics/customizations'

# This module provides support for Amazon Kinesis Analytics. This module is available in the
# `aws-sdk-kinesisanalytics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kinesis_analytics = Aws::KinesisAnalytics::Client.new
#     resp = kinesis_analytics.add_application_cloud_watch_logging_option(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kinesis Analytics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KinesisAnalytics::Errors::ServiceError
#       # rescues all Amazon Kinesis Analytics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KinesisAnalytics

  GEM_VERSION = '1.29.0'

end
