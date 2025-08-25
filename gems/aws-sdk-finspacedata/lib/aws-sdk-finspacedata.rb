# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:finspacedata)

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
  autoload :Types, 'aws-sdk-finspacedata/types'
  autoload :ClientApi, 'aws-sdk-finspacedata/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-finspacedata/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-finspacedata/client'
  autoload :Errors, 'aws-sdk-finspacedata/errors'
  autoload :Resource, 'aws-sdk-finspacedata/resource'
  autoload :EndpointParameters, 'aws-sdk-finspacedata/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-finspacedata/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-finspacedata/endpoints'

  GEM_VERSION = '1.56.0'

end

require_relative 'aws-sdk-finspacedata/customizations'
