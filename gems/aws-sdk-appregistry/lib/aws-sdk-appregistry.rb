# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:appregistry)

# This module provides support for AWS Service Catalog App Registry. This module is available in the
# `aws-sdk-appregistry` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_registry = Aws::AppRegistry::Client.new
#     resp = app_registry.associate_attribute_group(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Service Catalog App Registry are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppRegistry::Errors::ServiceError
#       # rescues all AWS Service Catalog App Registry API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppRegistry
  autoload :Types, 'aws-sdk-appregistry/types'
  autoload :ClientApi, 'aws-sdk-appregistry/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-appregistry/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-appregistry/client'
  autoload :Errors, 'aws-sdk-appregistry/errors'
  autoload :Resource, 'aws-sdk-appregistry/resource'
  autoload :EndpointParameters, 'aws-sdk-appregistry/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-appregistry/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-appregistry/endpoints'

  GEM_VERSION = '1.59.0'

end

require_relative 'aws-sdk-appregistry/customizations'
