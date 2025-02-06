# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:chatbot)

# This module provides support for AWS Chatbot. This module is available in the
# `aws-sdk-chatbot` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     chatbot = Aws::Chatbot::Client.new
#     resp = chatbot.associate_to_configuration(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Chatbot are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Chatbot::Errors::ServiceError
#       # rescues all AWS Chatbot API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Chatbot
  autoload :Types, 'aws-sdk-chatbot/types'
  autoload :ClientApi, 'aws-sdk-chatbot/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-chatbot/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-chatbot/client'
  autoload :Errors, 'aws-sdk-chatbot/errors'
  autoload :Resource, 'aws-sdk-chatbot/resource'
  autoload :EndpointParameters, 'aws-sdk-chatbot/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-chatbot/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-chatbot/endpoints'

  GEM_VERSION = '1.21.0'

end

require_relative 'aws-sdk-chatbot/customizations'
