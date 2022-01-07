# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iotanalytics/types'
require_relative 'aws-sdk-iotanalytics/client_api'
require_relative 'aws-sdk-iotanalytics/client'
require_relative 'aws-sdk-iotanalytics/errors'
require_relative 'aws-sdk-iotanalytics/resource'
require_relative 'aws-sdk-iotanalytics/customizations'

# This module provides support for AWS IoT Analytics. This module is available in the
# `aws-sdk-iotanalytics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     io_t_analytics = Aws::IoTAnalytics::Client.new
#     resp = io_t_analytics.batch_put_message(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS IoT Analytics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IoTAnalytics::Errors::ServiceError
#       # rescues all AWS IoT Analytics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IoTAnalytics

  GEM_VERSION = '1.47.0'

end
