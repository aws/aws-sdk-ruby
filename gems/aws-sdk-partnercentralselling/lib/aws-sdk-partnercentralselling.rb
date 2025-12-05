# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:partnercentralselling)

# This module provides support for Partner Central Selling API. This module is available in the
# `aws-sdk-partnercentralselling` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     partner_central_selling = Aws::PartnerCentralSelling::Client.new
#     resp = partner_central_selling.accept_engagement_invitation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Partner Central Selling API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PartnerCentralSelling::Errors::ServiceError
#       # rescues all Partner Central Selling API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PartnerCentralSelling
  autoload :Types, 'aws-sdk-partnercentralselling/types'
  autoload :ClientApi, 'aws-sdk-partnercentralselling/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-partnercentralselling/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-partnercentralselling/client'
  autoload :Errors, 'aws-sdk-partnercentralselling/errors'
  autoload :Waiters, 'aws-sdk-partnercentralselling/waiters'
  autoload :Resource, 'aws-sdk-partnercentralselling/resource'
  autoload :EndpointParameters, 'aws-sdk-partnercentralselling/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-partnercentralselling/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-partnercentralselling/endpoints'

  GEM_VERSION = '1.20.0'

end

require_relative 'aws-sdk-partnercentralselling/customizations'
