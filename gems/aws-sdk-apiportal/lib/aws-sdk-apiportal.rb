# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:apiportal)

# This module provides support for APIPortal. This module is available in the
# `aws-sdk-apiportal` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     api_portal = Aws::APIPortal::Client.new
#     resp = api_portal.associate_managed_apis(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from APIPortal are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::APIPortal::Errors::ServiceError
#       # rescues all APIPortal API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::APIPortal
  autoload :Types, 'aws-sdk-apiportal/types'
  autoload :ClientApi, 'aws-sdk-apiportal/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-apiportal/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-apiportal/client'
  autoload :Errors, 'aws-sdk-apiportal/errors'
  autoload :Resource, 'aws-sdk-apiportal/resource'
  autoload :EndpointParameters, 'aws-sdk-apiportal/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-apiportal/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-apiportal/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-apiportal/customizations'
