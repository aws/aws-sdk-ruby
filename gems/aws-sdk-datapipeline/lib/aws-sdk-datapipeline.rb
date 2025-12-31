# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:datapipeline)

# This module provides support for AWS Data Pipeline. This module is available in the
# `aws-sdk-datapipeline` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     data_pipeline = Aws::DataPipeline::Client.new
#     resp = data_pipeline.activate_pipeline(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Data Pipeline are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DataPipeline::Errors::ServiceError
#       # rescues all AWS Data Pipeline API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DataPipeline
  autoload :Types, 'aws-sdk-datapipeline/types'
  autoload :ClientApi, 'aws-sdk-datapipeline/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-datapipeline/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-datapipeline/client'
  autoload :Errors, 'aws-sdk-datapipeline/errors'
  autoload :Resource, 'aws-sdk-datapipeline/resource'
  autoload :EndpointParameters, 'aws-sdk-datapipeline/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-datapipeline/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-datapipeline/endpoints'

  GEM_VERSION = '1.76.0'

end

require_relative 'aws-sdk-datapipeline/customizations'
