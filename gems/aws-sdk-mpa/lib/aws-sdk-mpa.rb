# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mpa)

# This module provides support for AWS Multi-party Approval. This module is available in the
# `aws-sdk-mpa` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     mpa = Aws::MPA::Client.new
#     resp = mpa.cancel_session(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Multi-party Approval are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MPA::Errors::ServiceError
#       # rescues all AWS Multi-party Approval API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MPA
  autoload :Types, 'aws-sdk-mpa/types'
  autoload :ClientApi, 'aws-sdk-mpa/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mpa/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mpa/client'
  autoload :Errors, 'aws-sdk-mpa/errors'
  autoload :Waiters, 'aws-sdk-mpa/waiters'
  autoload :Resource, 'aws-sdk-mpa/resource'
  autoload :EndpointParameters, 'aws-sdk-mpa/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mpa/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mpa/endpoints'

  GEM_VERSION = '1.2.0'

end

require_relative 'aws-sdk-mpa/customizations'
