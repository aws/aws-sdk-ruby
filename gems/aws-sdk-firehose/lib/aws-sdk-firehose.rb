# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:firehose)

# This module provides support for Amazon Kinesis Firehose. This module is available in the
# `aws-sdk-firehose` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     firehose = Aws::Firehose::Client.new
#     resp = firehose.create_delivery_stream(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Kinesis Firehose are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Firehose::Errors::ServiceError
#       # rescues all Amazon Kinesis Firehose API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Firehose
  autoload :Types, 'aws-sdk-firehose/types'
  autoload :ClientApi, 'aws-sdk-firehose/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-firehose/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-firehose/client'
  autoload :Errors, 'aws-sdk-firehose/errors'
  autoload :Resource, 'aws-sdk-firehose/resource'
  autoload :EndpointParameters, 'aws-sdk-firehose/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-firehose/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-firehose/endpoints'

  GEM_VERSION = '1.102.0'

end

require_relative 'aws-sdk-firehose/customizations'
