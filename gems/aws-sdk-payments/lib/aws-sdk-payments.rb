# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:payments)

# This module provides support for AWS Payments. This module is available in the
# `aws-sdk-payments` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     payments = Aws::Payments::Client.new
#     resp = payments.batch_get_financial_record(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Payments are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Payments::Errors::ServiceError
#       # rescues all AWS Payments API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Payments
  autoload :Types, 'aws-sdk-payments/types'
  autoload :ClientApi, 'aws-sdk-payments/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-payments/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-payments/client'
  autoload :Errors, 'aws-sdk-payments/errors'
  autoload :Waiters, 'aws-sdk-payments/waiters'
  autoload :Resource, 'aws-sdk-payments/resource'
  autoload :EndpointParameters, 'aws-sdk-payments/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-payments/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-payments/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-payments/customizations'
