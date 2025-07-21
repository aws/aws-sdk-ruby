# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:directoryservicedata)

# This module provides support for AWS Directory Service Data. This module is available in the
# `aws-sdk-directoryservicedata` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     directory_service_data = Aws::DirectoryServiceData::Client.new
#     resp = directory_service_data.add_group_member(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Directory Service Data are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DirectoryServiceData::Errors::ServiceError
#       # rescues all AWS Directory Service Data API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DirectoryServiceData
  autoload :Types, 'aws-sdk-directoryservicedata/types'
  autoload :ClientApi, 'aws-sdk-directoryservicedata/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-directoryservicedata/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-directoryservicedata/client'
  autoload :Errors, 'aws-sdk-directoryservicedata/errors'
  autoload :Resource, 'aws-sdk-directoryservicedata/resource'
  autoload :EndpointParameters, 'aws-sdk-directoryservicedata/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-directoryservicedata/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-directoryservicedata/endpoints'

  GEM_VERSION = '1.12.0'

end

require_relative 'aws-sdk-directoryservicedata/customizations'
