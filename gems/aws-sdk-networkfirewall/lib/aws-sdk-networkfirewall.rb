# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:networkfirewall)

# This module provides support for AWS Network Firewall. This module is available in the
# `aws-sdk-networkfirewall` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     network_firewall = Aws::NetworkFirewall::Client.new
#     resp = network_firewall.accept_network_firewall_transit_gateway_attachment(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Network Firewall are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::NetworkFirewall::Errors::ServiceError
#       # rescues all AWS Network Firewall API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::NetworkFirewall
  autoload :Types, 'aws-sdk-networkfirewall/types'
  autoload :ClientApi, 'aws-sdk-networkfirewall/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-networkfirewall/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-networkfirewall/client'
  autoload :Errors, 'aws-sdk-networkfirewall/errors'
  autoload :Resource, 'aws-sdk-networkfirewall/resource'
  autoload :EndpointParameters, 'aws-sdk-networkfirewall/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-networkfirewall/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-networkfirewall/endpoints'

  GEM_VERSION = '1.82.0'

end

require_relative 'aws-sdk-networkfirewall/customizations'
