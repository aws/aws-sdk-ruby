# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-mwaa/types'
require_relative 'aws-sdk-mwaa/client_api'
require_relative 'aws-sdk-mwaa/plugins/endpoints.rb'
require_relative 'aws-sdk-mwaa/client'
require_relative 'aws-sdk-mwaa/errors'
require_relative 'aws-sdk-mwaa/resource'
require_relative 'aws-sdk-mwaa/endpoint_parameters'
require_relative 'aws-sdk-mwaa/endpoint_provider'
require_relative 'aws-sdk-mwaa/endpoints'
require_relative 'aws-sdk-mwaa/customizations'

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

  GEM_VERSION = '1.26.0'

end
