# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-firehose/types'
require_relative 'aws-sdk-firehose/client_api'
require_relative 'aws-sdk-firehose/client'
require_relative 'aws-sdk-firehose/errors'
require_relative 'aws-sdk-firehose/resource'
require_relative 'aws-sdk-firehose/customizations'

# This module provides support for Amazon Kinesis Firehose. This module is available in the
# `aws-sdk-firehose` gem.
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
# Errors returned from Amazon Kinesis Firehose all
# extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Firehose::Errors::ServiceError
#       # rescues all service API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::Firehose

  GEM_VERSION = '1.6.0'

end
