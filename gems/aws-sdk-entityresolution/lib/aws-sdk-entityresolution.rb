# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-entityresolution/types'
require_relative 'aws-sdk-entityresolution/client_api'
require_relative 'aws-sdk-entityresolution/plugins/endpoints.rb'
require_relative 'aws-sdk-entityresolution/client'
require_relative 'aws-sdk-entityresolution/errors'
require_relative 'aws-sdk-entityresolution/resource'
require_relative 'aws-sdk-entityresolution/endpoint_parameters'
require_relative 'aws-sdk-entityresolution/endpoint_provider'
require_relative 'aws-sdk-entityresolution/endpoints'
require_relative 'aws-sdk-entityresolution/customizations'

# This module provides support for AWS EntityResolution. This module is available in the
# `aws-sdk-entityresolution` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     entity_resolution = Aws::EntityResolution::Client.new
#     resp = entity_resolution.create_id_mapping_workflow(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS EntityResolution are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EntityResolution::Errors::ServiceError
#       # rescues all AWS EntityResolution API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EntityResolution

  GEM_VERSION = '1.6.0'

end
