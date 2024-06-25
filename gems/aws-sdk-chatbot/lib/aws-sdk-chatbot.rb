# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-chatbot/types'
require_relative 'aws-sdk-chatbot/client_api'
require_relative 'aws-sdk-chatbot/plugins/endpoints.rb'
require_relative 'aws-sdk-chatbot/client'
require_relative 'aws-sdk-chatbot/errors'
require_relative 'aws-sdk-chatbot/resource'
require_relative 'aws-sdk-chatbot/endpoint_parameters'
require_relative 'aws-sdk-chatbot/endpoint_provider'
require_relative 'aws-sdk-chatbot/endpoints'
require_relative 'aws-sdk-chatbot/customizations'

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
#     resp = chatbot.create_chime_webhook_configuration(params)
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

  GEM_VERSION = '1.7.0'

end
