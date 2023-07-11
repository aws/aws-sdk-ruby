# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-lexruntimev2/types'
require_relative 'aws-sdk-lexruntimev2/client_api'
require_relative 'aws-sdk-lexruntimev2/plugins/endpoints.rb'
require_relative 'aws-sdk-lexruntimev2/client'
require_relative 'aws-sdk-lexruntimev2/errors'
require_relative 'aws-sdk-lexruntimev2/resource'
require_relative 'aws-sdk-lexruntimev2/endpoint_parameters'
require_relative 'aws-sdk-lexruntimev2/endpoint_provider'
require_relative 'aws-sdk-lexruntimev2/endpoints'
require_relative 'aws-sdk-lexruntimev2/customizations'
require_relative 'aws-sdk-lexruntimev2/async_client'
require_relative 'aws-sdk-lexruntimev2/event_streams'

# This module provides support for Amazon Lex Runtime V2. This module is available in the
# `aws-sdk-lexruntimev2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lex_runtime_v2 = Aws::LexRuntimeV2::Client.new
#     resp = lex_runtime_v2.delete_session(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Lex Runtime V2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LexRuntimeV2::Errors::ServiceError
#       # rescues all Amazon Lex Runtime V2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LexRuntimeV2

  GEM_VERSION = '1.24.0'

end
