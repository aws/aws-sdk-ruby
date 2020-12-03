# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-sqs/types'
require_relative 'aws-sdk-sqs/client_api'
require_relative 'aws-sdk-sqs/client'
require_relative 'aws-sdk-sqs/errors'
require_relative 'aws-sdk-sqs/resource'
require_relative 'aws-sdk-sqs/message'
require_relative 'aws-sdk-sqs/queue'
require_relative 'aws-sdk-sqs/customizations'

# This module provides support for Amazon Simple Queue Service. This module is available in the
# `aws-sdk-sqs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sqs = Aws::SQS::Client.new
#     resp = sqs.add_permission(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Simple Queue Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SQS::Errors::ServiceError
#       # rescues all Amazon Simple Queue Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SQS

  GEM_VERSION = '1.34.0'

end
