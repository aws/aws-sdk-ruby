# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:signer)

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
  autoload :Types, 'aws-sdk-signer/types'
  autoload :ClientApi, 'aws-sdk-signer/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-signer/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-signer/client'
  autoload :Errors, 'aws-sdk-signer/errors'
  autoload :Waiters, 'aws-sdk-signer/waiters'
  autoload :Resource, 'aws-sdk-signer/resource'
  autoload :EndpointParameters, 'aws-sdk-signer/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-signer/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-signer/endpoints'

  GEM_VERSION = '1.75.0'

end

require_relative 'aws-sdk-signer/customizations'
