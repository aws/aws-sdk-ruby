# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-directoryservicedata/types'
require_relative 'aws-sdk-directoryservicedata/client_api'
require_relative 'aws-sdk-directoryservicedata/plugins/endpoints.rb'
require_relative 'aws-sdk-directoryservicedata/client'
require_relative 'aws-sdk-directoryservicedata/errors'
require_relative 'aws-sdk-directoryservicedata/resource'
require_relative 'aws-sdk-directoryservicedata/endpoint_parameters'
require_relative 'aws-sdk-directoryservicedata/endpoint_provider'
require_relative 'aws-sdk-directoryservicedata/endpoints'
require_relative 'aws-sdk-directoryservicedata/customizations'

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

  GEM_VERSION = '1.1.0'

end
