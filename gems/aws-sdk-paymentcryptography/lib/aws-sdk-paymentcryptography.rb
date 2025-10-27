# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:paymentcryptography)

# This module provides support for Payment Cryptography Control Plane. This module is available in the
# `aws-sdk-paymentcryptography` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     payment_cryptography = Aws::PaymentCryptography::Client.new
#     resp = payment_cryptography.add_key_replication_regions(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Payment Cryptography Control Plane are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PaymentCryptography::Errors::ServiceError
#       # rescues all Payment Cryptography Control Plane API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PaymentCryptography
  autoload :Types, 'aws-sdk-paymentcryptography/types'
  autoload :ClientApi, 'aws-sdk-paymentcryptography/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-paymentcryptography/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-paymentcryptography/client'
  autoload :Errors, 'aws-sdk-paymentcryptography/errors'
  autoload :Waiters, 'aws-sdk-paymentcryptography/waiters'
  autoload :Resource, 'aws-sdk-paymentcryptography/resource'
  autoload :EndpointParameters, 'aws-sdk-paymentcryptography/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-paymentcryptography/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-paymentcryptography/endpoints'

  GEM_VERSION = '1.45.0'

end

require_relative 'aws-sdk-paymentcryptography/customizations'
