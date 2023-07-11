# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-networkfirewall/types'
require_relative 'aws-sdk-networkfirewall/client_api'
require_relative 'aws-sdk-networkfirewall/plugins/endpoints.rb'
require_relative 'aws-sdk-networkfirewall/client'
require_relative 'aws-sdk-networkfirewall/errors'
require_relative 'aws-sdk-networkfirewall/resource'
require_relative 'aws-sdk-networkfirewall/endpoint_parameters'
require_relative 'aws-sdk-networkfirewall/endpoint_provider'
require_relative 'aws-sdk-networkfirewall/endpoints'
require_relative 'aws-sdk-networkfirewall/customizations'

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
#     resp = network_firewall.associate_firewall_policy(params)
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

  GEM_VERSION = '1.33.0'

end
