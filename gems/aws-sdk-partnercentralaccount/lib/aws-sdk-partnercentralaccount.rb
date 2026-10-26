# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PartnerCentralAccount', Module.new) unless Aws.const_defined?('PartnerCentralAccount')

# @title Partner Central Account API
# <p>AWS Partner Central Account service provides APIs for managing partner accounts, connections, and profiles within the AWS Partner Network. This service enables partners to create and manage their partner profiles, establish connections with other partners, and maintain their account information.</p>
module Aws::PartnerCentralAccount
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-partnercentralaccount/types'
require_relative 'aws-sdk-partnercentralaccount/paginators'
require_relative 'aws-sdk-partnercentralaccount/schema'
require_relative 'aws-sdk-partnercentralaccount/auth_parameters'
require_relative 'aws-sdk-partnercentralaccount/auth_resolver'
require_relative 'aws-sdk-partnercentralaccount/client'
require_relative 'aws-sdk-partnercentralaccount/errors'
require_relative 'aws-sdk-partnercentralaccount/endpoint_parameters'
require_relative 'aws-sdk-partnercentralaccount/endpoint_provider'
require_relative 'aws-sdk-partnercentralaccount/waiters'
require_relative 'aws-sdk-partnercentralaccount/customizations'
