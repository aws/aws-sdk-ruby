# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lambdacore)

# This module provides support for AWS Lambda Core. This module is available in the
# `aws-sdk-lambdacore` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lambda_core = Aws::LambdaCore::Client.new
#     resp = lambda_core.create_network_connector(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Lambda Core are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LambdaCore::Errors::ServiceError
#       # rescues all AWS Lambda Core API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LambdaCore
  autoload :Types, 'aws-sdk-lambdacore/types'
  autoload :ClientApi, 'aws-sdk-lambdacore/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lambdacore/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lambdacore/client'
  autoload :Errors, 'aws-sdk-lambdacore/errors'
  autoload :Resource, 'aws-sdk-lambdacore/resource'
  autoload :EndpointParameters, 'aws-sdk-lambdacore/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lambdacore/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lambdacore/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-lambdacore/customizations'
