# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudwatch/types'
require_relative 'aws-sdk-cloudwatch/client_api'
require_relative 'aws-sdk-cloudwatch/client'
require_relative 'aws-sdk-cloudwatch/errors'
require_relative 'aws-sdk-cloudwatch/waiters'
require_relative 'aws-sdk-cloudwatch/resource'
require_relative 'aws-sdk-cloudwatch/alarm'
require_relative 'aws-sdk-cloudwatch/metric'
require_relative 'aws-sdk-cloudwatch/customizations'

# This module provides support for Amazon CloudWatch. This module is available in the
# `aws-sdk-cloudwatch` gem.
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
# Errors returned from Amazon CloudWatch all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudWatch::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::CloudWatch

  GEM_VERSION = '1.10.0'

end
