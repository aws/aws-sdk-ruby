# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-bedrockruntime/types'
require_relative 'aws-sdk-bedrockruntime/client_api'
require_relative 'aws-sdk-bedrockruntime/plugins/endpoints.rb'
require_relative 'aws-sdk-bedrockruntime/client'
require_relative 'aws-sdk-bedrockruntime/errors'
require_relative 'aws-sdk-bedrockruntime/waiters'
require_relative 'aws-sdk-bedrockruntime/resource'
require_relative 'aws-sdk-bedrockruntime/endpoint_parameters'
require_relative 'aws-sdk-bedrockruntime/endpoint_provider'
require_relative 'aws-sdk-bedrockruntime/endpoints'
require_relative 'aws-sdk-bedrockruntime/customizations'
require_relative 'aws-sdk-bedrockruntime/event_streams'

# This module provides support for Amazon Bedrock Runtime. This module is available in the
# `aws-sdk-bedrockruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bedrock_runtime = Aws::BedrockRuntime::Client.new
#     resp = bedrock_runtime.invoke_model(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Bedrock Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BedrockRuntime::Errors::ServiceError
#       # rescues all Amazon Bedrock Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BedrockRuntime

  GEM_VERSION = '1.5.0'

end
