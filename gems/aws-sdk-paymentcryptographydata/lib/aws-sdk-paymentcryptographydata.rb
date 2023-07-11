# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-paymentcryptographydata/types'
require_relative 'aws-sdk-paymentcryptographydata/client_api'
require_relative 'aws-sdk-paymentcryptographydata/plugins/endpoints.rb'
require_relative 'aws-sdk-paymentcryptographydata/client'
require_relative 'aws-sdk-paymentcryptographydata/errors'
require_relative 'aws-sdk-paymentcryptographydata/resource'
require_relative 'aws-sdk-paymentcryptographydata/endpoint_parameters'
require_relative 'aws-sdk-paymentcryptographydata/endpoint_provider'
require_relative 'aws-sdk-paymentcryptographydata/endpoints'
require_relative 'aws-sdk-paymentcryptographydata/customizations'

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

  GEM_VERSION = '1.4.0'

end
