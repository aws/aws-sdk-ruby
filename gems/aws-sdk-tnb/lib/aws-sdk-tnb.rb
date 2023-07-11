# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-tnb/types'
require_relative 'aws-sdk-tnb/client_api'
require_relative 'aws-sdk-tnb/plugins/endpoints.rb'
require_relative 'aws-sdk-tnb/client'
require_relative 'aws-sdk-tnb/errors'
require_relative 'aws-sdk-tnb/resource'
require_relative 'aws-sdk-tnb/endpoint_parameters'
require_relative 'aws-sdk-tnb/endpoint_provider'
require_relative 'aws-sdk-tnb/endpoints'
require_relative 'aws-sdk-tnb/customizations'

# This module provides support for AWS Telco Network Builder. This module is available in the
# `aws-sdk-tnb` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     tnb = Aws::Tnb::Client.new
#     resp = tnb.cancel_sol_network_operation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Telco Network Builder are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Tnb::Errors::ServiceError
#       # rescues all AWS Telco Network Builder API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Tnb

  GEM_VERSION = '1.6.0'

end
