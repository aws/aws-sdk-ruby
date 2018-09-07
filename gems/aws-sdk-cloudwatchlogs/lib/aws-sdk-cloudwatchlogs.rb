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
# See {Client} for more information.
#
# # Errors
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
#
# @service
module Aws::CloudWatchLogs

  GEM_VERSION = '1.8.0'

end
