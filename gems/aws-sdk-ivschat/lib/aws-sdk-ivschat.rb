# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ivschat/types'
require_relative 'aws-sdk-ivschat/client_api'
require_relative 'aws-sdk-ivschat/plugins/endpoints.rb'
require_relative 'aws-sdk-ivschat/client'
require_relative 'aws-sdk-ivschat/errors'
require_relative 'aws-sdk-ivschat/resource'
require_relative 'aws-sdk-ivschat/endpoint_parameters'
require_relative 'aws-sdk-ivschat/endpoint_provider'
require_relative 'aws-sdk-ivschat/endpoints'
require_relative 'aws-sdk-ivschat/customizations'

# This module provides support for Amazon Interactive Video Service Chat. This module is available in the
# `aws-sdk-ivschat` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ivschat = Aws::Ivschat::Client.new
#     resp = ivschat.create_chat_token(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Interactive Video Service Chat are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Ivschat::Errors::ServiceError
#       # rescues all Amazon Interactive Video Service Chat API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Ivschat

  GEM_VERSION = '1.14.0'

end
