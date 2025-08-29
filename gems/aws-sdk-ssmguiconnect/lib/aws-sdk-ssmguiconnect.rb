# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ssmguiconnect)

# This module provides support for AWS SSM-GUIConnect. This module is available in the
# `aws-sdk-ssmguiconnect` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ssm_gui_connect = Aws::SSMGuiConnect::Client.new
#     resp = ssm_gui_connect.delete_connection_recording_preferences(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS SSM-GUIConnect are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SSMGuiConnect::Errors::ServiceError
#       # rescues all AWS SSM-GUIConnect API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SSMGuiConnect
  autoload :Types, 'aws-sdk-ssmguiconnect/types'
  autoload :ClientApi, 'aws-sdk-ssmguiconnect/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ssmguiconnect/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ssmguiconnect/client'
  autoload :Errors, 'aws-sdk-ssmguiconnect/errors'
  autoload :Resource, 'aws-sdk-ssmguiconnect/resource'
  autoload :EndpointParameters, 'aws-sdk-ssmguiconnect/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ssmguiconnect/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ssmguiconnect/endpoints'

  GEM_VERSION = '1.8.0'

end

require_relative 'aws-sdk-ssmguiconnect/customizations'
