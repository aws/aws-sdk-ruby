# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PaymentCryptographyData', Module.new) unless Aws.const_defined?('PaymentCryptographyData')

# @title Payment Cryptography Data Plane
# <p>You use the Amazon Web Services Payment Cryptography Data Plane to manage how encryption keys are used for payment-related transaction processing and associated cryptographic operations. You can encrypt, decrypt, generate, verify, and translate payment-related cryptographic operations in Amazon Web Services Payment Cryptography. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/data-operations.html">Data operations</a> in the <i>Amazon Web Services Payment Cryptography User Guide</i>.</p> <p>To manage your encryption keys, you use the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/Welcome.html">Amazon Web Services Payment Cryptography Control Plane</a>. You can create, import, export, share, manage, and delete keys. You can also manage Identity and Access Management (IAM) policies for keys. </p>
module Aws::PaymentCryptographyData
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-paymentcryptographydata/types'
require_relative 'aws-sdk-paymentcryptographydata/paginators'
require_relative 'aws-sdk-paymentcryptographydata/schema'
require_relative 'aws-sdk-paymentcryptographydata/auth_parameters'
require_relative 'aws-sdk-paymentcryptographydata/auth_resolver'
require_relative 'aws-sdk-paymentcryptographydata/client'
require_relative 'aws-sdk-paymentcryptographydata/customizations'
require_relative 'aws-sdk-paymentcryptographydata/errors'
require_relative 'aws-sdk-paymentcryptographydata/endpoint_parameters'
require_relative 'aws-sdk-paymentcryptographydata/endpoint_provider'
require_relative 'aws-sdk-paymentcryptographydata/waiters'
