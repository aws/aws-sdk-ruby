# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:organizations)

# This module provides support for AWS Organizations. This module is available in the
# `aws-sdk-organizations` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     organizations = Aws::Organizations::Client.new
#     resp = organizations.accept_handshake(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Organizations are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Organizations::Errors::ServiceError
#       # rescues all AWS Organizations API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Organizations
  autoload :Types, 'aws-sdk-organizations/types'
  autoload :ClientApi, 'aws-sdk-organizations/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-organizations/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-organizations/client'
  autoload :Errors, 'aws-sdk-organizations/errors'
  autoload :Resource, 'aws-sdk-organizations/resource'
  autoload :EndpointParameters, 'aws-sdk-organizations/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-organizations/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-organizations/endpoints'

  GEM_VERSION = '1.118.0'

end

require_relative 'aws-sdk-organizations/customizations'
