# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-kafkaconnect/types'
require_relative 'aws-sdk-kafkaconnect/client_api'
require_relative 'aws-sdk-kafkaconnect/plugins/endpoints.rb'
require_relative 'aws-sdk-kafkaconnect/client'
require_relative 'aws-sdk-kafkaconnect/errors'
require_relative 'aws-sdk-kafkaconnect/resource'
require_relative 'aws-sdk-kafkaconnect/endpoint_parameters'
require_relative 'aws-sdk-kafkaconnect/endpoint_provider'
require_relative 'aws-sdk-kafkaconnect/endpoints'
require_relative 'aws-sdk-kafkaconnect/customizations'

# This module provides support for Managed Streaming for Kafka Connect. This module is available in the
# `aws-sdk-kafkaconnect` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kafka_connect = Aws::KafkaConnect::Client.new
#     resp = kafka_connect.create_connector(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Managed Streaming for Kafka Connect are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::KafkaConnect::Errors::ServiceError
#       # rescues all Managed Streaming for Kafka Connect API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::KafkaConnect

  GEM_VERSION = '1.14.0'

end
