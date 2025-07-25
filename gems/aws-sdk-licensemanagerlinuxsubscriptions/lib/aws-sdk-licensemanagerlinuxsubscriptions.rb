# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:licensemanagerlinuxsubscriptions)

# This module provides support for AWS License Manager Linux Subscriptions. This module is available in the
# `aws-sdk-licensemanagerlinuxsubscriptions` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     license_manager_linux_subscriptions = Aws::LicenseManagerLinuxSubscriptions::Client.new
#     resp = license_manager_linux_subscriptions.deregister_subscription_provider(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS License Manager Linux Subscriptions are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LicenseManagerLinuxSubscriptions::Errors::ServiceError
#       # rescues all AWS License Manager Linux Subscriptions API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LicenseManagerLinuxSubscriptions
  autoload :Types, 'aws-sdk-licensemanagerlinuxsubscriptions/types'
  autoload :ClientApi, 'aws-sdk-licensemanagerlinuxsubscriptions/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-licensemanagerlinuxsubscriptions/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-licensemanagerlinuxsubscriptions/client'
  autoload :Errors, 'aws-sdk-licensemanagerlinuxsubscriptions/errors'
  autoload :Resource, 'aws-sdk-licensemanagerlinuxsubscriptions/resource'
  autoload :EndpointParameters, 'aws-sdk-licensemanagerlinuxsubscriptions/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-licensemanagerlinuxsubscriptions/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-licensemanagerlinuxsubscriptions/endpoints'

  GEM_VERSION = '1.32.0'

end

require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/customizations'
