# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:qconnect)

# This module provides support for Amazon Q Connect. This module is available in the
# `aws-sdk-qconnect` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     q_connect = Aws::QConnect::Client.new
#     resp = q_connect.activate_message_template(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Q Connect are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::QConnect::Errors::ServiceError
#       # rescues all Amazon Q Connect API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::QConnect
  autoload :Types, 'aws-sdk-qconnect/types'
  autoload :ClientApi, 'aws-sdk-qconnect/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-qconnect/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-qconnect/client'
  autoload :Errors, 'aws-sdk-qconnect/errors'
  autoload :Waiters, 'aws-sdk-qconnect/waiters'
  autoload :Resource, 'aws-sdk-qconnect/resource'
  autoload :EndpointParameters, 'aws-sdk-qconnect/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-qconnect/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-qconnect/endpoints'

  GEM_VERSION = '1.43.0'

end

require_relative 'aws-sdk-qconnect/customizations'
