# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-keyspaces/types'
require_relative 'aws-sdk-keyspaces/client_api'
require_relative 'aws-sdk-keyspaces/plugins/endpoints.rb'
require_relative 'aws-sdk-keyspaces/client'
require_relative 'aws-sdk-keyspaces/errors'
require_relative 'aws-sdk-keyspaces/waiters'
require_relative 'aws-sdk-keyspaces/resource'
require_relative 'aws-sdk-keyspaces/endpoint_parameters'
require_relative 'aws-sdk-keyspaces/endpoint_provider'
require_relative 'aws-sdk-keyspaces/endpoints'
require_relative 'aws-sdk-keyspaces/customizations'

# This module provides support for Amazon Keyspaces. This module is available in the
# `aws-sdk-keyspaces` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     keyspaces = Aws::Keyspaces::Client.new
#     resp = keyspaces.create_keyspace(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Keyspaces are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Keyspaces::Errors::ServiceError
#       # rescues all Amazon Keyspaces API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Keyspaces

  GEM_VERSION = '1.12.0'

end
