# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-apprunner/types'
require_relative 'aws-sdk-apprunner/client_api'
require_relative 'aws-sdk-apprunner/plugins/endpoints.rb'
require_relative 'aws-sdk-apprunner/client'
require_relative 'aws-sdk-apprunner/errors'
require_relative 'aws-sdk-apprunner/resource'
require_relative 'aws-sdk-apprunner/endpoint_parameters'
require_relative 'aws-sdk-apprunner/endpoint_provider'
require_relative 'aws-sdk-apprunner/endpoints'
require_relative 'aws-sdk-apprunner/customizations'

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

  GEM_VERSION = '1.27.0'

end
