# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:codebuild)

# This module provides support for AWS CodeBuild. This module is available in the
# `aws-sdk-codebuild` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_build = Aws::CodeBuild::Client.new
#     resp = code_build.batch_delete_builds(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CodeBuild are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeBuild::Errors::ServiceError
#       # rescues all AWS CodeBuild API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeBuild
  autoload :Types, 'aws-sdk-codebuild/types'
  autoload :ClientApi, 'aws-sdk-codebuild/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codebuild/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codebuild/client'
  autoload :Errors, 'aws-sdk-codebuild/errors'
  autoload :Resource, 'aws-sdk-codebuild/resource'
  autoload :EndpointParameters, 'aws-sdk-codebuild/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codebuild/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codebuild/endpoints'

  GEM_VERSION = '1.167.0'

end

require_relative 'aws-sdk-codebuild/customizations'
