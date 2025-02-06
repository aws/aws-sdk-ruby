# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesis)

# This module provides support for Amazon Kinesis. This module is available in the
# `aws-sdk-kinesis` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     kinesis = Aws::Kinesis::Client.new
#     resp = kinesis.add_tags_to_stream(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kinesis are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Kinesis::Errors::ServiceError
#       # rescues all Amazon Kinesis API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Kinesis
  autoload :Types, 'aws-sdk-kinesis/types'
  autoload :ClientApi, 'aws-sdk-kinesis/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-kinesis/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-kinesis/client'
  autoload :Errors, 'aws-sdk-kinesis/errors'
  autoload :Waiters, 'aws-sdk-kinesis/waiters'
  autoload :Resource, 'aws-sdk-kinesis/resource'
  autoload :EndpointParameters, 'aws-sdk-kinesis/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-kinesis/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-kinesis/endpoints'
  autoload :AsyncClient, 'aws-sdk-kinesis/async_client'
  autoload :EventStreams, 'aws-sdk-kinesis/event_streams'

  GEM_VERSION = '1.73.0'

end

require_relative 'aws-sdk-kinesis/customizations'
