# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-pipes/types'
require_relative 'aws-sdk-pipes/client_api'
require_relative 'aws-sdk-pipes/plugins/endpoints.rb'
require_relative 'aws-sdk-pipes/client'
require_relative 'aws-sdk-pipes/errors'
require_relative 'aws-sdk-pipes/resource'
require_relative 'aws-sdk-pipes/endpoint_parameters'
require_relative 'aws-sdk-pipes/endpoint_provider'
require_relative 'aws-sdk-pipes/endpoints'
require_relative 'aws-sdk-pipes/customizations'

# This module provides support for Amazon EventBridge Pipes. This module is available in the
# `aws-sdk-pipes` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pipes = Aws::Pipes::Client.new
#     resp = pipes.create_pipe(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EventBridge Pipes are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Pipes::Errors::ServiceError
#       # rescues all Amazon EventBridge Pipes API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Pipes

  GEM_VERSION = '1.8.0'

end
