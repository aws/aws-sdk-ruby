# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-paymentcryptography/types'
require_relative 'aws-sdk-paymentcryptography/client_api'
require_relative 'aws-sdk-paymentcryptography/plugins/endpoints.rb'
require_relative 'aws-sdk-paymentcryptography/client'
require_relative 'aws-sdk-paymentcryptography/errors'
require_relative 'aws-sdk-paymentcryptography/resource'
require_relative 'aws-sdk-paymentcryptography/endpoint_parameters'
require_relative 'aws-sdk-paymentcryptography/endpoint_provider'
require_relative 'aws-sdk-paymentcryptography/endpoints'
require_relative 'aws-sdk-paymentcryptography/customizations'

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
#     resp = payment_cryptography.create_alias(params)
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

  GEM_VERSION = '1.4.0'

end
