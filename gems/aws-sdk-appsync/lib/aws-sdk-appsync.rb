# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-appsync/types'
require_relative 'aws-sdk-appsync/client_api'
require_relative 'aws-sdk-appsync/client'
require_relative 'aws-sdk-appsync/errors'
require_relative 'aws-sdk-appsync/resource'
require_relative 'aws-sdk-appsync/customizations'

# This module provides support for AWS AppSync. This module is available in the
# `aws-sdk-appsync` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_sync = Aws::AppSync::Client.new
#     resp = app_sync.create_api_cache(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS AppSync are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppSync::Errors::ServiceError
#       # rescues all AWS AppSync API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppSync

  GEM_VERSION = '1.37.0'

end
