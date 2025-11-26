# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('NetworkManager', Module.new) unless Aws.const_defined?('NetworkManager')

# @title AWS Network Manager
# <p>Amazon Web Services enables you to centrally manage your Amazon Web Services Cloud WAN core network and your Transit Gateway network across Amazon Web Services accounts, Regions, and on-premises locations.</p>
module Aws::NetworkManager
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-networkmanager/types'
require_relative 'aws-sdk-networkmanager/paginators'
require_relative 'aws-sdk-networkmanager/schema'
require_relative 'aws-sdk-networkmanager/auth_parameters'
require_relative 'aws-sdk-networkmanager/auth_resolver'
require_relative 'aws-sdk-networkmanager/client'
require_relative 'aws-sdk-networkmanager/errors'
require_relative 'aws-sdk-networkmanager/endpoint_parameters'
require_relative 'aws-sdk-networkmanager/endpoint_provider'
require_relative 'aws-sdk-networkmanager/waiters'
require_relative 'aws-sdk-networkmanager/customizations'
