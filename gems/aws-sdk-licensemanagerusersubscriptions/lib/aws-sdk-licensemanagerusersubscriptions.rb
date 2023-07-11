# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-licensemanagerusersubscriptions/types'
require_relative 'aws-sdk-licensemanagerusersubscriptions/client_api'
require_relative 'aws-sdk-licensemanagerusersubscriptions/plugins/endpoints.rb'
require_relative 'aws-sdk-licensemanagerusersubscriptions/client'
require_relative 'aws-sdk-licensemanagerusersubscriptions/errors'
require_relative 'aws-sdk-licensemanagerusersubscriptions/resource'
require_relative 'aws-sdk-licensemanagerusersubscriptions/endpoint_parameters'
require_relative 'aws-sdk-licensemanagerusersubscriptions/endpoint_provider'
require_relative 'aws-sdk-licensemanagerusersubscriptions/endpoints'
require_relative 'aws-sdk-licensemanagerusersubscriptions/customizations'

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

  GEM_VERSION = '1.8.0'

end
