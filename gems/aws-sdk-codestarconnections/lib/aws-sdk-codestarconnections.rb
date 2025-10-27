# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:codestarconnections)

# This module provides support for AWS CodeStar connections. This module is available in the
# `aws-sdk-codestarconnections` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_starconnections = Aws::CodeStarconnections::Client.new
#     resp = code_starconnections.create_connection(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS CodeStar connections are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeStarconnections::Errors::ServiceError
#       # rescues all AWS CodeStar connections API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeStarconnections
  autoload :Types, 'aws-sdk-codestarconnections/types'
  autoload :ClientApi, 'aws-sdk-codestarconnections/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codestarconnections/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codestarconnections/client'
  autoload :Errors, 'aws-sdk-codestarconnections/errors'
  autoload :Resource, 'aws-sdk-codestarconnections/resource'
  autoload :EndpointParameters, 'aws-sdk-codestarconnections/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codestarconnections/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codestarconnections/endpoints'

  GEM_VERSION = '1.67.0'

end

require_relative 'aws-sdk-codestarconnections/customizations'
