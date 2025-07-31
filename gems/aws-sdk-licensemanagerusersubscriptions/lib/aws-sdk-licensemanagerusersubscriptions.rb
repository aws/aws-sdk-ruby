# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:licensemanagerusersubscriptions)

# This module provides support for AWS License Manager User Subscriptions. This module is available in the
# `aws-sdk-licensemanagerusersubscriptions` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     license_manager_user_subscriptions = Aws::LicenseManagerUserSubscriptions::Client.new
#     resp = license_manager_user_subscriptions.associate_user(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS License Manager User Subscriptions are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LicenseManagerUserSubscriptions::Errors::ServiceError
#       # rescues all AWS License Manager User Subscriptions API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LicenseManagerUserSubscriptions
  autoload :Types, 'aws-sdk-licensemanagerusersubscriptions/types'
  autoload :ClientApi, 'aws-sdk-licensemanagerusersubscriptions/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-licensemanagerusersubscriptions/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-licensemanagerusersubscriptions/client'
  autoload :Errors, 'aws-sdk-licensemanagerusersubscriptions/errors'
  autoload :Resource, 'aws-sdk-licensemanagerusersubscriptions/resource'
  autoload :EndpointParameters, 'aws-sdk-licensemanagerusersubscriptions/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-licensemanagerusersubscriptions/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-licensemanagerusersubscriptions/endpoints'

  GEM_VERSION = '1.36.0'

end

require_relative 'aws-sdk-licensemanagerusersubscriptions/customizations'
