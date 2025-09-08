# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mq)

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
  autoload :Types, 'aws-sdk-mq/types'
  autoload :ClientApi, 'aws-sdk-mq/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mq/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mq/client'
  autoload :Errors, 'aws-sdk-mq/errors'
  autoload :Resource, 'aws-sdk-mq/resource'
  autoload :EndpointParameters, 'aws-sdk-mq/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mq/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mq/endpoints'

  GEM_VERSION = '1.86.0'

end

require_relative 'aws-sdk-mq/customizations'
