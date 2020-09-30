# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
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

# This module provides support for Amazon CloudWatch Logs. This module is available in the
# `aws-sdk-cloudwatchlogs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_watch_logs = Aws::CloudWatchLogs::Client.new
#     resp = cloud_watch_logs.associate_kms_key(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudWatch Logs are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudWatchLogs::Errors::ServiceError
#       # rescues all Amazon CloudWatch Logs API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudWatchLogs

  GEM_VERSION = '1.38.0'

end
