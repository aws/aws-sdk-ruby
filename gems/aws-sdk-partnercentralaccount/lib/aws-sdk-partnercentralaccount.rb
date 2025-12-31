# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:partnercentralaccount)

# This module provides support for Partner Central Account API. This module is available in the
# `aws-sdk-partnercentralaccount` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     partner_central_account = Aws::PartnerCentralAccount::Client.new
#     resp = partner_central_account.accept_connection_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Partner Central Account API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PartnerCentralAccount::Errors::ServiceError
#       # rescues all Partner Central Account API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PartnerCentralAccount
  autoload :Types, 'aws-sdk-partnercentralaccount/types'
  autoload :ClientApi, 'aws-sdk-partnercentralaccount/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-partnercentralaccount/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-partnercentralaccount/client'
  autoload :Errors, 'aws-sdk-partnercentralaccount/errors'
  autoload :Waiters, 'aws-sdk-partnercentralaccount/waiters'
  autoload :Resource, 'aws-sdk-partnercentralaccount/resource'
  autoload :EndpointParameters, 'aws-sdk-partnercentralaccount/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-partnercentralaccount/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-partnercentralaccount/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-partnercentralaccount/customizations'
