# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:partnercentralchannel)

# This module provides support for Partner Central Channel API. This module is available in the
# `aws-sdk-partnercentralchannel` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     partner_central_channel = Aws::PartnerCentralChannel::Client.new
#     resp = partner_central_channel.accept_channel_handshake(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Partner Central Channel API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PartnerCentralChannel::Errors::ServiceError
#       # rescues all Partner Central Channel API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PartnerCentralChannel
  autoload :Types, 'aws-sdk-partnercentralchannel/types'
  autoload :ClientApi, 'aws-sdk-partnercentralchannel/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-partnercentralchannel/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-partnercentralchannel/client'
  autoload :Errors, 'aws-sdk-partnercentralchannel/errors'
  autoload :Waiters, 'aws-sdk-partnercentralchannel/waiters'
  autoload :Resource, 'aws-sdk-partnercentralchannel/resource'
  autoload :EndpointParameters, 'aws-sdk-partnercentralchannel/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-partnercentralchannel/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-partnercentralchannel/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-partnercentralchannel/customizations'
