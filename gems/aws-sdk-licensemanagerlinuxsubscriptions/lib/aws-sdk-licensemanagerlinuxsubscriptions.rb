# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/types'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/client_api'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/plugins/endpoints.rb'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/client'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/errors'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/resource'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/endpoint_parameters'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/endpoint_provider'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/endpoints'
require_relative 'aws-sdk-licensemanagerlinuxsubscriptions/customizations'

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
#     resp = license_manager_linux_subscriptions.get_service_settings(params)
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

  GEM_VERSION = '1.6.0'

end
