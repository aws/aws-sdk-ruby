# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DataZone', Module.new) unless Aws.const_defined?('DataZone')

# @title Amazon DataZone
# <p>Amazon DataZone is a data management service that enables you to catalog, discover, govern, share, and analyze your data. With Amazon DataZone, you can share and access your data across accounts and supported regions. Amazon DataZone simplifies your experience across Amazon Web Services services, including, but not limited to, Amazon Redshift, Amazon Athena, Amazon Web Services Glue, and Amazon Web Services Lake Formation.</p>
module Aws::DataZone
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-datazone/types'
require_relative 'aws-sdk-datazone/paginators'
require_relative 'aws-sdk-datazone/schema'
require_relative 'aws-sdk-datazone/auth_parameters'
require_relative 'aws-sdk-datazone/auth_resolver'
require_relative 'aws-sdk-datazone/client'
require_relative 'aws-sdk-datazone/customizations'
require_relative 'aws-sdk-datazone/errors'
require_relative 'aws-sdk-datazone/endpoint_parameters'
require_relative 'aws-sdk-datazone/endpoint_provider'
require_relative 'aws-sdk-datazone/waiters'
