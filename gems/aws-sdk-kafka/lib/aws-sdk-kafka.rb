# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:kafka)

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
  autoload :Types, 'aws-sdk-kafka/types'
  autoload :ClientApi, 'aws-sdk-kafka/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-kafka/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-kafka/client'
  autoload :Errors, 'aws-sdk-kafka/errors'
  autoload :Resource, 'aws-sdk-kafka/resource'
  autoload :EndpointParameters, 'aws-sdk-kafka/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-kafka/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-kafka/endpoints'

  GEM_VERSION = '1.95.0'

end

require_relative 'aws-sdk-kafka/customizations'
