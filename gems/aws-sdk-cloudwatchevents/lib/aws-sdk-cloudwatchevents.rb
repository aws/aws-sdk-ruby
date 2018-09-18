# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudwatchevents/types'
require_relative 'aws-sdk-cloudwatchevents/client_api'
require_relative 'aws-sdk-cloudwatchevents/client'
require_relative 'aws-sdk-cloudwatchevents/errors'
require_relative 'aws-sdk-cloudwatchevents/resource'
require_relative 'aws-sdk-cloudwatchevents/customizations'

# This module provides support for Amazon CloudWatch Events. This module is available in the
# `aws-sdk-cloudwatchevents` gem.
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
#
# @service
module Aws::CloudWatchEvents

  GEM_VERSION = '1.7.0'

end
