# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'

require_relative 'aws-sdk-codecatalyst/types'
require_relative 'aws-sdk-codecatalyst/client_api'
require_relative 'aws-sdk-codecatalyst/plugins/endpoints.rb'
require_relative 'aws-sdk-codecatalyst/client'
require_relative 'aws-sdk-codecatalyst/errors'
require_relative 'aws-sdk-codecatalyst/waiters'
require_relative 'aws-sdk-codecatalyst/resource'
require_relative 'aws-sdk-codecatalyst/endpoint_parameters'
require_relative 'aws-sdk-codecatalyst/endpoint_provider'
require_relative 'aws-sdk-codecatalyst/endpoints'
require_relative 'aws-sdk-codecatalyst/customizations'

# This module provides support for Amazon CodeCatalyst. This module is available in the
# `aws-sdk-codecatalyst` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_catalyst = Aws::CodeCatalyst::Client.new
#     resp = code_catalyst.create_access_token(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CodeCatalyst are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeCatalyst::Errors::ServiceError
#       # rescues all Amazon CodeCatalyst API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeCatalyst

  GEM_VERSION = '1.9.0'

end
