# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:supportauthz)

# This module provides support for SupportAuthZ. This module is available in the
# `aws-sdk-supportauthz` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     support_auth_z = Aws::SupportAuthZ::Client.new
#     resp = support_auth_z.create_support_permit(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from SupportAuthZ are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SupportAuthZ::Errors::ServiceError
#       # rescues all SupportAuthZ API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SupportAuthZ
  autoload :Types, 'aws-sdk-supportauthz/types'
  autoload :ClientApi, 'aws-sdk-supportauthz/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-supportauthz/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-supportauthz/client'
  autoload :Errors, 'aws-sdk-supportauthz/errors'
  autoload :Waiters, 'aws-sdk-supportauthz/waiters'
  autoload :Resource, 'aws-sdk-supportauthz/resource'
  autoload :EndpointParameters, 'aws-sdk-supportauthz/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-supportauthz/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-supportauthz/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-supportauthz/customizations'
