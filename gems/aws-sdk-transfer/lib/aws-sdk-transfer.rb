# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:transfer)

# This module provides support for AWS Transfer Family. This module is available in the
# `aws-sdk-transfer` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     transfer = Aws::Transfer::Client.new
#     resp = transfer.create_access(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Transfer Family are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Transfer::Errors::ServiceError
#       # rescues all AWS Transfer Family API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Transfer
  autoload :Types, 'aws-sdk-transfer/types'
  autoload :ClientApi, 'aws-sdk-transfer/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-transfer/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-transfer/client'
  autoload :Errors, 'aws-sdk-transfer/errors'
  autoload :Waiters, 'aws-sdk-transfer/waiters'
  autoload :Resource, 'aws-sdk-transfer/resource'
  autoload :EndpointParameters, 'aws-sdk-transfer/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-transfer/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-transfer/endpoints'

  GEM_VERSION = '1.121.0'

end

require_relative 'aws-sdk-transfer/customizations'
