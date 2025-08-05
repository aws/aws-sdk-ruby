# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:codepipeline)

# This module provides support for AWS CodePipeline. This module is available in the
# `aws-sdk-codepipeline` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_pipeline = Aws::CodePipeline::Client.new
#     resp = code_pipeline.acknowledge_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CodePipeline are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodePipeline::Errors::ServiceError
#       # rescues all AWS CodePipeline API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodePipeline
  autoload :Types, 'aws-sdk-codepipeline/types'
  autoload :ClientApi, 'aws-sdk-codepipeline/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codepipeline/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codepipeline/client'
  autoload :Errors, 'aws-sdk-codepipeline/errors'
  autoload :Resource, 'aws-sdk-codepipeline/resource'
  autoload :EndpointParameters, 'aws-sdk-codepipeline/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codepipeline/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codepipeline/endpoints'

  GEM_VERSION = '1.104.0'

end

require_relative 'aws-sdk-codepipeline/customizations'
