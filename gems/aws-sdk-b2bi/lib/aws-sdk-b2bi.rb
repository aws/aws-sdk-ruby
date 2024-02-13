# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-b2bi/types'
require_relative 'aws-sdk-b2bi/client_api'
require_relative 'aws-sdk-b2bi/plugins/endpoints.rb'
require_relative 'aws-sdk-b2bi/client'
require_relative 'aws-sdk-b2bi/errors'
require_relative 'aws-sdk-b2bi/resource'
require_relative 'aws-sdk-b2bi/endpoint_parameters'
require_relative 'aws-sdk-b2bi/endpoint_provider'
require_relative 'aws-sdk-b2bi/endpoints'
require_relative 'aws-sdk-b2bi/customizations'

# This module provides support for AWS B2B Data Interchange. This module is available in the
# `aws-sdk-b2bi` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     b2bi = Aws::B2bi::Client.new
#     resp = b2bi.create_capability(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS B2B Data Interchange are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::B2bi::Errors::ServiceError
#       # rescues all AWS B2B Data Interchange API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::B2bi

  GEM_VERSION = '1.4.0'

end
