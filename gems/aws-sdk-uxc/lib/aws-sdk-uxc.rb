# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:uxc)

# This module provides support for AWS User Experience Customization. This module is available in the
# `aws-sdk-uxc` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     uxc = Aws::Uxc::Client.new
#     resp = uxc.get_account_customizations(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS User Experience Customization are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Uxc::Errors::ServiceError
#       # rescues all AWS User Experience Customization API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Uxc
  autoload :Types, 'aws-sdk-uxc/types'
  autoload :ClientApi, 'aws-sdk-uxc/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-uxc/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-uxc/client'
  autoload :Errors, 'aws-sdk-uxc/errors'
  autoload :Waiters, 'aws-sdk-uxc/waiters'
  autoload :Resource, 'aws-sdk-uxc/resource'
  autoload :EndpointParameters, 'aws-sdk-uxc/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-uxc/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-uxc/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-uxc/customizations'
