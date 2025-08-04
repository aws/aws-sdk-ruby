# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:invoicing)

# This module provides support for AWS Invoicing. This module is available in the
# `aws-sdk-invoicing` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     invoicing = Aws::Invoicing::Client.new
#     resp = invoicing.batch_get_invoice_profile(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Invoicing are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Invoicing::Errors::ServiceError
#       # rescues all AWS Invoicing API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Invoicing
  autoload :Types, 'aws-sdk-invoicing/types'
  autoload :ClientApi, 'aws-sdk-invoicing/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-invoicing/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-invoicing/client'
  autoload :Errors, 'aws-sdk-invoicing/errors'
  autoload :Waiters, 'aws-sdk-invoicing/waiters'
  autoload :Resource, 'aws-sdk-invoicing/resource'
  autoload :EndpointParameters, 'aws-sdk-invoicing/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-invoicing/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-invoicing/endpoints'

  GEM_VERSION = '1.10.0'

end

require_relative 'aws-sdk-invoicing/customizations'
