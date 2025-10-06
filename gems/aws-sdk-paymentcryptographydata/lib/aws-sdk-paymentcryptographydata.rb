# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:paymentcryptographydata)

# This module provides support for Payment Cryptography Data Plane. This module is available in the
# `aws-sdk-paymentcryptographydata` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     payment_cryptography_data = Aws::PaymentCryptographyData::Client.new
#     resp = payment_cryptography_data.decrypt_data(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Payment Cryptography Data Plane are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PaymentCryptographyData::Errors::ServiceError
#       # rescues all Payment Cryptography Data Plane API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PaymentCryptographyData
  autoload :Types, 'aws-sdk-paymentcryptographydata/types'
  autoload :ClientApi, 'aws-sdk-paymentcryptographydata/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-paymentcryptographydata/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-paymentcryptographydata/client'
  autoload :Errors, 'aws-sdk-paymentcryptographydata/errors'
  autoload :Waiters, 'aws-sdk-paymentcryptographydata/waiters'
  autoload :Resource, 'aws-sdk-paymentcryptographydata/resource'
  autoload :EndpointParameters, 'aws-sdk-paymentcryptographydata/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-paymentcryptographydata/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-paymentcryptographydata/endpoints'

  GEM_VERSION = '1.41.0'

end

require_relative 'aws-sdk-paymentcryptographydata/customizations'
