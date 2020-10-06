# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-kinesisanalyticsv2/types'
require_relative 'aws-sdk-kinesisanalyticsv2/client_api'
require_relative 'aws-sdk-kinesisanalyticsv2/client'
require_relative 'aws-sdk-kinesisanalyticsv2/errors'
require_relative 'aws-sdk-kinesisanalyticsv2/resource'
require_relative 'aws-sdk-kinesisanalyticsv2/customizations'

# This module provides support for Amazon Kinesis Analytics. This module is available in the
# `aws-sdk-kinesisanalyticsv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kinesis_analytics_v2 = Aws::KinesisAnalyticsV2::Client.new
#     resp = kinesis_analytics_v2.add_application_cloud_watch_logging_option(params)
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
#     rescue Aws::KinesisAnalyticsV2::Errors::ServiceError
#       # rescues all Amazon Kinesis Analytics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KinesisAnalyticsV2

  GEM_VERSION = '1.23.0'

end
