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
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kinesis Analytics all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KinesisAnalyticsV2::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::KinesisAnalyticsV2

  GEM_VERSION = '1.7.0'

end
