# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SignerData', Module.new) unless Aws.const_defined?('SignerData')

# @title AWS Signer Data Plane
# <p>AWS Signer Data Plane service provides APIs for checking revocation status of signed artifacts.</p>
module Aws::SignerData
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-signerdata/types'
require_relative 'aws-sdk-signerdata/paginators'
require_relative 'aws-sdk-signerdata/schema'
require_relative 'aws-sdk-signerdata/auth_parameters'
require_relative 'aws-sdk-signerdata/auth_resolver'
require_relative 'aws-sdk-signerdata/client'
require_relative 'aws-sdk-signerdata/errors'
require_relative 'aws-sdk-signerdata/endpoint_parameters'
require_relative 'aws-sdk-signerdata/endpoint_provider'
require_relative 'aws-sdk-signerdata/waiters'
require_relative 'aws-sdk-signerdata/customizations'
