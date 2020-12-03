# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-directconnect/types'
require_relative 'aws-sdk-directconnect/client_api'
require_relative 'aws-sdk-directconnect/client'
require_relative 'aws-sdk-directconnect/errors'
require_relative 'aws-sdk-directconnect/resource'
require_relative 'aws-sdk-directconnect/customizations'

# This module provides support for AWS Direct Connect. This module is available in the
# `aws-sdk-directconnect` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     direct_connect = Aws::DirectConnect::Client.new
#     resp = direct_connect.accept_direct_connect_gateway_association_proposal(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Direct Connect are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DirectConnect::Errors::ServiceError
#       # rescues all AWS Direct Connect API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DirectConnect

  GEM_VERSION = '1.37.0'

end
