# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-bedrock/types'
require_relative 'aws-sdk-bedrock/client_api'
require_relative 'aws-sdk-bedrock/plugins/endpoints.rb'
require_relative 'aws-sdk-bedrock/client'
require_relative 'aws-sdk-bedrock/errors'
require_relative 'aws-sdk-bedrock/waiters'
require_relative 'aws-sdk-bedrock/resource'
require_relative 'aws-sdk-bedrock/endpoint_parameters'
require_relative 'aws-sdk-bedrock/endpoint_provider'
require_relative 'aws-sdk-bedrock/endpoints'
require_relative 'aws-sdk-bedrock/customizations'

# This module provides support for Amazon Bedrock. This module is available in the
# `aws-sdk-bedrock` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bedrock = Aws::Bedrock::Client.new
#     resp = bedrock.create_model_customization_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Bedrock are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Bedrock::Errors::ServiceError
#       # rescues all Amazon Bedrock API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Bedrock

  GEM_VERSION = '1.4.0'

end
