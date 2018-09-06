# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-kinesis/types'
require_relative 'aws-sdk-kinesis/client_api'
require_relative 'aws-sdk-kinesis/client'
require_relative 'aws-sdk-kinesis/errors'
require_relative 'aws-sdk-kinesis/waiters'
require_relative 'aws-sdk-kinesis/resource'
require_relative 'aws-sdk-kinesis/customizations'

# This module provides support for Amazon Kinesis. This module is available in the
# `aws-sdk-kinesis` gem.
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
# Errors returned from Amazon Kinesis all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Kinesis::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Kinesis

  GEM_VERSION = '1.6.0'

end
