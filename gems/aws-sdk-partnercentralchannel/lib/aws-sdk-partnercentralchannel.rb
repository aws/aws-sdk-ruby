# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PartnerCentralChannel', Module.new) unless Aws.const_defined?('PartnerCentralChannel')

# @title Partner Central Channel API
# <p>AWS Partner Central Channel service for managing partner relationships, handshakes, and program management accounts.</p>
module Aws::PartnerCentralChannel
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-partnercentralchannel/types'
require_relative 'aws-sdk-partnercentralchannel/paginators'
require_relative 'aws-sdk-partnercentralchannel/schema'
require_relative 'aws-sdk-partnercentralchannel/auth_parameters'
require_relative 'aws-sdk-partnercentralchannel/auth_resolver'
require_relative 'aws-sdk-partnercentralchannel/client'
require_relative 'aws-sdk-partnercentralchannel/errors'
require_relative 'aws-sdk-partnercentralchannel/endpoint_parameters'
require_relative 'aws-sdk-partnercentralchannel/endpoint_provider'
require_relative 'aws-sdk-partnercentralchannel/waiters'
require_relative 'aws-sdk-partnercentralchannel/customizations'
