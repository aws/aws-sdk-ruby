# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mediastore)

# This module provides support for AWS Elemental MediaStore. This module is available in the
# `aws-sdk-mediastore` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     media_store = Aws::MediaStore::Client.new
#     resp = media_store.create_container(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elemental MediaStore are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MediaStore::Errors::ServiceError
#       # rescues all AWS Elemental MediaStore API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MediaStore
  autoload :Types, 'aws-sdk-mediastore/types'
  autoload :ClientApi, 'aws-sdk-mediastore/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mediastore/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mediastore/client'
  autoload :Errors, 'aws-sdk-mediastore/errors'
  autoload :Resource, 'aws-sdk-mediastore/resource'
  autoload :EndpointParameters, 'aws-sdk-mediastore/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mediastore/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mediastore/endpoints'

  GEM_VERSION = '1.69.0'

end

require_relative 'aws-sdk-mediastore/customizations'
