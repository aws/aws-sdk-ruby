# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-account/types'
require_relative 'aws-sdk-account/client_api'
require_relative 'aws-sdk-account/plugins/endpoints.rb'
require_relative 'aws-sdk-account/client'
require_relative 'aws-sdk-account/errors'
require_relative 'aws-sdk-account/resource'
require_relative 'aws-sdk-account/endpoint_parameters'
require_relative 'aws-sdk-account/endpoint_provider'
require_relative 'aws-sdk-account/endpoints'
require_relative 'aws-sdk-account/customizations'

# This module provides support for AWS Account. This module is available in the
# `aws-sdk-account` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     account = Aws::Account::Client.new
#     resp = account.delete_alternate_contact(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Account are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Account::Errors::ServiceError
#       # rescues all AWS Account API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Account

  GEM_VERSION = '1.17.0'

end
