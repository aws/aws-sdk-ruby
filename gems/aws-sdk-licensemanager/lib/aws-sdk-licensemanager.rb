# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:licensemanager)

# This module provides support for AWS License Manager. This module is available in the
# `aws-sdk-licensemanager` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     license_manager = Aws::LicenseManager::Client.new
#     resp = license_manager.accept_grant(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS License Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LicenseManager::Errors::ServiceError
#       # rescues all AWS License Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LicenseManager
  autoload :Types, 'aws-sdk-licensemanager/types'
  autoload :ClientApi, 'aws-sdk-licensemanager/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-licensemanager/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-licensemanager/client'
  autoload :Errors, 'aws-sdk-licensemanager/errors'
  autoload :Resource, 'aws-sdk-licensemanager/resource'
  autoload :EndpointParameters, 'aws-sdk-licensemanager/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-licensemanager/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-licensemanager/endpoints'

  GEM_VERSION = '1.79.0'

end

require_relative 'aws-sdk-licensemanager/customizations'
