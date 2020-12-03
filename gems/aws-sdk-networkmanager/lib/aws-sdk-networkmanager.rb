# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-networkmanager/types'
require_relative 'aws-sdk-networkmanager/client_api'
require_relative 'aws-sdk-networkmanager/client'
require_relative 'aws-sdk-networkmanager/errors'
require_relative 'aws-sdk-networkmanager/resource'
require_relative 'aws-sdk-networkmanager/customizations'

# This module provides support for AWS Network Manager. This module is available in the
# `aws-sdk-networkmanager` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     network_manager = Aws::NetworkManager::Client.new
#     resp = network_manager.associate_customer_gateway(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Network Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::NetworkManager::Errors::ServiceError
#       # rescues all AWS Network Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::NetworkManager

  GEM_VERSION = '1.8.0'

end
