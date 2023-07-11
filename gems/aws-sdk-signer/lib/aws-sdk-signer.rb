# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-signer/types'
require_relative 'aws-sdk-signer/client_api'
require_relative 'aws-sdk-signer/plugins/endpoints.rb'
require_relative 'aws-sdk-signer/client'
require_relative 'aws-sdk-signer/errors'
require_relative 'aws-sdk-signer/waiters'
require_relative 'aws-sdk-signer/resource'
require_relative 'aws-sdk-signer/endpoint_parameters'
require_relative 'aws-sdk-signer/endpoint_provider'
require_relative 'aws-sdk-signer/endpoints'
require_relative 'aws-sdk-signer/customizations'

# This module provides support for AWS Signer. This module is available in the
# `aws-sdk-signer` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     signer = Aws::Signer::Client.new
#     resp = signer.add_profile_permission(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Signer are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Signer::Errors::ServiceError
#       # rescues all AWS Signer API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Signer

  GEM_VERSION = '1.46.0'

end
