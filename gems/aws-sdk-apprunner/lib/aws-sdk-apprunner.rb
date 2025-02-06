# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:apprunner)

# This module provides support for AWS App Runner. This module is available in the
# `aws-sdk-apprunner` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_runner = Aws::AppRunner::Client.new
#     resp = app_runner.associate_custom_domain(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS App Runner are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppRunner::Errors::ServiceError
#       # rescues all AWS App Runner API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppRunner
  autoload :Types, 'aws-sdk-apprunner/types'
  autoload :ClientApi, 'aws-sdk-apprunner/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-apprunner/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-apprunner/client'
  autoload :Errors, 'aws-sdk-apprunner/errors'
  autoload :Resource, 'aws-sdk-apprunner/resource'
  autoload :EndpointParameters, 'aws-sdk-apprunner/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-apprunner/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-apprunner/endpoints'

  GEM_VERSION = '1.53.0'

end

require_relative 'aws-sdk-apprunner/customizations'
