# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lambdamicrovms)

# This module provides support for Lambda MicroVMs. This module is available in the
# `aws-sdk-lambdamicrovms` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lambda_microvms = Aws::LambdaMicrovms::Client.new
#     resp = lambda_microvms.create_microvm_auth_token(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Lambda MicroVMs are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LambdaMicrovms::Errors::ServiceError
#       # rescues all Lambda MicroVMs API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LambdaMicrovms
  autoload :Types, 'aws-sdk-lambdamicrovms/types'
  autoload :ClientApi, 'aws-sdk-lambdamicrovms/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lambdamicrovms/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lambdamicrovms/client'
  autoload :Errors, 'aws-sdk-lambdamicrovms/errors'
  autoload :Resource, 'aws-sdk-lambdamicrovms/resource'
  autoload :EndpointParameters, 'aws-sdk-lambdamicrovms/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lambdamicrovms/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lambdamicrovms/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-lambdamicrovms/customizations'
