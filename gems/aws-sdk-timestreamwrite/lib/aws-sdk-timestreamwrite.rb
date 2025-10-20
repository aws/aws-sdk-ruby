# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:timestreamwrite)

# This module provides support for Amazon Timestream Write. This module is available in the
# `aws-sdk-timestreamwrite` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     timestream_write = Aws::TimestreamWrite::Client.new
#     resp = timestream_write.create_batch_load_task(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Timestream Write are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::TimestreamWrite::Errors::ServiceError
#       # rescues all Amazon Timestream Write API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::TimestreamWrite
  autoload :Types, 'aws-sdk-timestreamwrite/types'
  autoload :ClientApi, 'aws-sdk-timestreamwrite/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-timestreamwrite/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-timestreamwrite/client'
  autoload :Errors, 'aws-sdk-timestreamwrite/errors'
  autoload :Resource, 'aws-sdk-timestreamwrite/resource'
  autoload :EndpointParameters, 'aws-sdk-timestreamwrite/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-timestreamwrite/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-timestreamwrite/endpoints'

  GEM_VERSION = '1.55.0'

end

require_relative 'aws-sdk-timestreamwrite/customizations'
