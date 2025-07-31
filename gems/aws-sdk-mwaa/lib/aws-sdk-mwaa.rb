# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mwaa)

# This module provides support for AmazonMWAA. This module is available in the
# `aws-sdk-mwaa` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     mwaa = Aws::MWAA::Client.new
#     resp = mwaa.create_cli_token(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AmazonMWAA are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MWAA::Errors::ServiceError
#       # rescues all AmazonMWAA API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MWAA
  autoload :Types, 'aws-sdk-mwaa/types'
  autoload :ClientApi, 'aws-sdk-mwaa/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mwaa/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mwaa/client'
  autoload :Errors, 'aws-sdk-mwaa/errors'
  autoload :Resource, 'aws-sdk-mwaa/resource'
  autoload :EndpointParameters, 'aws-sdk-mwaa/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mwaa/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mwaa/endpoints'

  GEM_VERSION = '1.61.0'

end

require_relative 'aws-sdk-mwaa/customizations'
