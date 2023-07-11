# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-privatenetworks/types'
require_relative 'aws-sdk-privatenetworks/client_api'
require_relative 'aws-sdk-privatenetworks/plugins/endpoints.rb'
require_relative 'aws-sdk-privatenetworks/client'
require_relative 'aws-sdk-privatenetworks/errors'
require_relative 'aws-sdk-privatenetworks/resource'
require_relative 'aws-sdk-privatenetworks/endpoint_parameters'
require_relative 'aws-sdk-privatenetworks/endpoint_provider'
require_relative 'aws-sdk-privatenetworks/endpoints'
require_relative 'aws-sdk-privatenetworks/customizations'

# This module provides support for AWS Private 5G. This module is available in the
# `aws-sdk-privatenetworks` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     private_networks = Aws::PrivateNetworks::Client.new
#     resp = private_networks.acknowledge_order_receipt(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Private 5G are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PrivateNetworks::Errors::ServiceError
#       # rescues all AWS Private 5G API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PrivateNetworks

  GEM_VERSION = '1.10.0'

end
