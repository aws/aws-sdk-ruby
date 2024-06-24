# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-taxsettings/types'
require_relative 'aws-sdk-taxsettings/client_api'
require_relative 'aws-sdk-taxsettings/plugins/endpoints.rb'
require_relative 'aws-sdk-taxsettings/client'
require_relative 'aws-sdk-taxsettings/errors'
require_relative 'aws-sdk-taxsettings/resource'
require_relative 'aws-sdk-taxsettings/endpoint_parameters'
require_relative 'aws-sdk-taxsettings/endpoint_provider'
require_relative 'aws-sdk-taxsettings/endpoints'
require_relative 'aws-sdk-taxsettings/customizations'

# This module provides support for Tax Settings. This module is available in the
# `aws-sdk-taxsettings` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     tax_settings = Aws::TaxSettings::Client.new
#     resp = tax_settings.batch_delete_tax_registration(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Tax Settings are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::TaxSettings::Errors::ServiceError
#       # rescues all Tax Settings API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::TaxSettings

  GEM_VERSION = '1.2.0'

end
