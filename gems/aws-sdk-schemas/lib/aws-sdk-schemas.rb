# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-schemas/types'
require_relative 'aws-sdk-schemas/client_api'
require_relative 'aws-sdk-schemas/client'
require_relative 'aws-sdk-schemas/errors'
require_relative 'aws-sdk-schemas/waiters'
require_relative 'aws-sdk-schemas/resource'
require_relative 'aws-sdk-schemas/customizations'

# This module provides support for Schemas. This module is available in the
# `aws-sdk-schemas` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     schemas = Aws::Schemas::Client.new
#     resp = schemas.create_discoverer(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Schemas are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Schemas::Errors::ServiceError
#       # rescues all Schemas API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Schemas

  GEM_VERSION = '1.10.0'

end
