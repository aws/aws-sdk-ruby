# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:taxsettings)

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
  autoload :Types, 'aws-sdk-taxsettings/types'
  autoload :ClientApi, 'aws-sdk-taxsettings/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-taxsettings/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-taxsettings/client'
  autoload :Errors, 'aws-sdk-taxsettings/errors'
  autoload :Resource, 'aws-sdk-taxsettings/resource'
  autoload :EndpointParameters, 'aws-sdk-taxsettings/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-taxsettings/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-taxsettings/endpoints'

  GEM_VERSION = '1.31.0'

end

require_relative 'aws-sdk-taxsettings/customizations'
