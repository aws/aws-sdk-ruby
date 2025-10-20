# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:connect)

# This module provides support for Amazon Connect Service. This module is available in the
# `aws-sdk-connect` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect = Aws::Connect::Client.new
#     resp = connect.activate_evaluation_form(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Connect Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Connect::Errors::ServiceError
#       # rescues all Amazon Connect Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Connect
  autoload :Types, 'aws-sdk-connect/types'
  autoload :ClientApi, 'aws-sdk-connect/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-connect/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-connect/client'
  autoload :Errors, 'aws-sdk-connect/errors'
  autoload :Resource, 'aws-sdk-connect/resource'
  autoload :EndpointParameters, 'aws-sdk-connect/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-connect/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-connect/endpoints'

  GEM_VERSION = '1.219.0'

end

require_relative 'aws-sdk-connect/customizations'
