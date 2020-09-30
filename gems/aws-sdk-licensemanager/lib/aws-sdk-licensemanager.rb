# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-licensemanager/types'
require_relative 'aws-sdk-licensemanager/client_api'
require_relative 'aws-sdk-licensemanager/client'
require_relative 'aws-sdk-licensemanager/errors'
require_relative 'aws-sdk-licensemanager/resource'
require_relative 'aws-sdk-licensemanager/customizations'

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
#     resp = license_manager.create_license_configuration(params)
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

  GEM_VERSION = '1.20.0'

end
