# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:batch)

# This module provides support for AWS Batch. This module is available in the
# `aws-sdk-batch` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     batch = Aws::Batch::Client.new
#     resp = batch.cancel_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Batch are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Batch::Errors::ServiceError
#       # rescues all AWS Batch API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Batch
  autoload :Types, 'aws-sdk-batch/types'
  autoload :ClientApi, 'aws-sdk-batch/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-batch/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-batch/client'
  autoload :Errors, 'aws-sdk-batch/errors'
  autoload :Resource, 'aws-sdk-batch/resource'
  autoload :EndpointParameters, 'aws-sdk-batch/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-batch/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-batch/endpoints'

  GEM_VERSION = '1.117.0'

end

require_relative 'aws-sdk-batch/customizations'
