# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrock)

# This module provides support for Amazon Bedrock. This module is available in the
# `aws-sdk-bedrock` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bedrock = Aws::Bedrock::Client.new
#     resp = bedrock.batch_delete_evaluation_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Bedrock are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Bedrock::Errors::ServiceError
#       # rescues all Amazon Bedrock API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Bedrock
  autoload :Types, 'aws-sdk-bedrock/types'
  autoload :ClientApi, 'aws-sdk-bedrock/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bedrock/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bedrock/client'
  autoload :Errors, 'aws-sdk-bedrock/errors'
  autoload :Waiters, 'aws-sdk-bedrock/waiters'
  autoload :Resource, 'aws-sdk-bedrock/resource'
  autoload :EndpointParameters, 'aws-sdk-bedrock/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bedrock/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bedrock/endpoints'

  GEM_VERSION = '1.65.0'

end

require_relative 'aws-sdk-bedrock/customizations'
