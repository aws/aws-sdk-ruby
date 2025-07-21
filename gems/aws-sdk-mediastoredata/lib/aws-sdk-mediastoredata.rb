# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediastoredata)

# This module provides support for AWS Elemental MediaStore Data Plane. This module is available in the
# `aws-sdk-mediastoredata` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_store_data = Aws::MediaStoreData::Client.new
#     resp = media_store_data.delete_object(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elemental MediaStore Data Plane are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaStoreData::Errors::ServiceError
#       # rescues all AWS Elemental MediaStore Data Plane API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaStoreData
  autoload :Types, 'aws-sdk-mediastoredata/types'
  autoload :ClientApi, 'aws-sdk-mediastoredata/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mediastoredata/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mediastoredata/client'
  autoload :Errors, 'aws-sdk-mediastoredata/errors'
  autoload :Resource, 'aws-sdk-mediastoredata/resource'
  autoload :EndpointParameters, 'aws-sdk-mediastoredata/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mediastoredata/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mediastoredata/endpoints'

  GEM_VERSION = '1.71.0'

end

require_relative 'aws-sdk-mediastoredata/customizations'
