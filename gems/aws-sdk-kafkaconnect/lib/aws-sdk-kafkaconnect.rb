# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:kafkaconnect)

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
  autoload :Types, 'aws-sdk-kafkaconnect/types'
  autoload :ClientApi, 'aws-sdk-kafkaconnect/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-kafkaconnect/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-kafkaconnect/client'
  autoload :Errors, 'aws-sdk-kafkaconnect/errors'
  autoload :Waiters, 'aws-sdk-kafkaconnect/waiters'
  autoload :Resource, 'aws-sdk-kafkaconnect/resource'
  autoload :EndpointParameters, 'aws-sdk-kafkaconnect/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-kafkaconnect/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-kafkaconnect/endpoints'

  GEM_VERSION = '1.48.0'

end

require_relative 'aws-sdk-kafkaconnect/customizations'
