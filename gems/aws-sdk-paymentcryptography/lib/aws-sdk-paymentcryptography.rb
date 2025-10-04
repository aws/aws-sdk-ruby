# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PaymentCryptography', Module.new) unless Aws.const_defined?('PaymentCryptography')

# @title Payment Cryptography Control Plane
# <p>Amazon Web Services Payment Cryptography Control Plane APIs manage encryption keys for use during payment-related cryptographic operations. You can create, import, export, share, manage, and delete keys. You can also manage Identity and Access Management (IAM) policies for keys. For more information, see <a href="https://docs.aws.amazon.com/payment-cryptography/latest/userguide/security-iam.html">Identity and access management</a> in the <i>Amazon Web Services Payment Cryptography User Guide.</i> </p> <p>To use encryption keys for payment-related transaction processing and associated cryptographic operations, you use the <a href="https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/Welcome.html">Amazon Web Services Payment Cryptography Data Plane</a>. You can perform actions like encrypt, decrypt, generate, and verify payment-related data.</p> <p>All Amazon Web Services Payment Cryptography API calls must be signed and transmitted using Transport Layer Security (TLS). We recommend you always use the latest supported TLS version for logging API requests. </p> <p>Amazon Web Services Payment Cryptography supports CloudTrail for control plane operations, a service that logs Amazon Web Services API calls and related events for your Amazon Web Services account and delivers them to an Amazon S3 bucket you specify. By using the information collected by CloudTrail, you can determine what requests were made to Amazon Web Services Payment Cryptography, who made the request, when it was made, and so on. If you don't conﬁgure a trail, you can still view the most recent events in the CloudTrail console. For more information, see the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/">CloudTrail User Guide</a>.</p>
module Aws::PaymentCryptography
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-paymentcryptography/types'
require_relative 'aws-sdk-paymentcryptography/paginators'
require_relative 'aws-sdk-paymentcryptography/schema'
require_relative 'aws-sdk-paymentcryptography/auth_parameters'
require_relative 'aws-sdk-paymentcryptography/auth_resolver'
require_relative 'aws-sdk-paymentcryptography/client'
require_relative 'aws-sdk-paymentcryptography/customizations'
require_relative 'aws-sdk-paymentcryptography/errors'
require_relative 'aws-sdk-paymentcryptography/endpoint_parameters'
require_relative 'aws-sdk-paymentcryptography/endpoint_provider'
require_relative 'aws-sdk-paymentcryptography/waiters'
