# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lambdaweb)

# This module provides support for Lambda Web. This module is available in the
# `aws-sdk-lambdaweb` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lambda_web = Aws::LambdaWeb::Client.new
#     resp = lambda_web.create_web_function(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Lambda Web are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LambdaWeb::Errors::ServiceError
#       # rescues all Lambda Web API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LambdaWeb
  autoload :Types, 'aws-sdk-lambdaweb/types'
  autoload :ClientApi, 'aws-sdk-lambdaweb/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lambdaweb/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lambdaweb/client'
  autoload :Errors, 'aws-sdk-lambdaweb/errors'
  autoload :Waiters, 'aws-sdk-lambdaweb/waiters'
  autoload :Resource, 'aws-sdk-lambdaweb/resource'
  autoload :EndpointParameters, 'aws-sdk-lambdaweb/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lambdaweb/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lambdaweb/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-lambdaweb/customizations'
