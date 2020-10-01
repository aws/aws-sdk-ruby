# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-kafka/types'
require_relative 'aws-sdk-kafka/client_api'
require_relative 'aws-sdk-kafka/client'
require_relative 'aws-sdk-kafka/errors'
require_relative 'aws-sdk-kafka/resource'
require_relative 'aws-sdk-kafka/customizations'

# This module provides support for Managed Streaming for Kafka. This module is available in the
# `aws-sdk-kafka` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kafka = Aws::Kafka::Client.new
#     resp = kafka.batch_associate_scram_secret(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Managed Streaming for Kafka are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Kafka::Errors::ServiceError
#       # rescues all Managed Streaming for Kafka API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Kafka

  GEM_VERSION = '1.29.0'

end
