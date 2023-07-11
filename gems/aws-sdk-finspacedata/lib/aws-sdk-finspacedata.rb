# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-finspacedata/types'
require_relative 'aws-sdk-finspacedata/client_api'
require_relative 'aws-sdk-finspacedata/plugins/endpoints.rb'
require_relative 'aws-sdk-finspacedata/client'
require_relative 'aws-sdk-finspacedata/errors'
require_relative 'aws-sdk-finspacedata/resource'
require_relative 'aws-sdk-finspacedata/endpoint_parameters'
require_relative 'aws-sdk-finspacedata/endpoint_provider'
require_relative 'aws-sdk-finspacedata/endpoints'
require_relative 'aws-sdk-finspacedata/customizations'

# This module provides support for FinSpace Public API. This module is available in the
# `aws-sdk-finspacedata` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     fin_space_data = Aws::FinSpaceData::Client.new
#     resp = fin_space_data.associate_user_to_permission_group(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from FinSpace Public API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::FinSpaceData::Errors::ServiceError
#       # rescues all FinSpace Public API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::FinSpaceData

  GEM_VERSION = '1.24.0'

end
