# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mq/types'
require_relative 'aws-sdk-mq/client_api'
require_relative 'aws-sdk-mq/client'
require_relative 'aws-sdk-mq/errors'
require_relative 'aws-sdk-mq/resource'
require_relative 'aws-sdk-mq/customizations'

# This module provides support for AmazonMQ. This module is available in the
# `aws-sdk-mq` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     mq = Aws::MQ::Client.new
#     resp = mq.create_broker(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AmazonMQ are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MQ::Errors::ServiceError
#       # rescues all AmazonMQ API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MQ

  GEM_VERSION = '1.33.0'

end
