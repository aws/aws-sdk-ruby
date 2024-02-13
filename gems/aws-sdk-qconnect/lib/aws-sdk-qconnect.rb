# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-qconnect/types'
require_relative 'aws-sdk-qconnect/client_api'
require_relative 'aws-sdk-qconnect/plugins/endpoints.rb'
require_relative 'aws-sdk-qconnect/client'
require_relative 'aws-sdk-qconnect/errors'
require_relative 'aws-sdk-qconnect/resource'
require_relative 'aws-sdk-qconnect/endpoint_parameters'
require_relative 'aws-sdk-qconnect/endpoint_provider'
require_relative 'aws-sdk-qconnect/endpoints'
require_relative 'aws-sdk-qconnect/customizations'

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
#     resp = q_connect.create_assistant(params)
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

  GEM_VERSION = '1.5.0'

end
