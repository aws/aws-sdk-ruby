# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('MarketplaceDiscovery', Module.new) unless Aws.const_defined?('MarketplaceDiscovery')

# @title AWS Marketplace Discovery
# <p>The AWS Marketplace Discovery API provides programmatic access to the AWS Marketplace catalog, including searching and browsing listings, retrieving product details and fulfillment options, and accessing public and private offer pricing and terms.</p>
module Aws::MarketplaceDiscovery
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-marketplacediscovery/types'
require_relative 'aws-sdk-marketplacediscovery/paginators'
require_relative 'aws-sdk-marketplacediscovery/schema'
require_relative 'aws-sdk-marketplacediscovery/auth_parameters'
require_relative 'aws-sdk-marketplacediscovery/auth_resolver'
require_relative 'aws-sdk-marketplacediscovery/client'
require_relative 'aws-sdk-marketplacediscovery/errors'
require_relative 'aws-sdk-marketplacediscovery/endpoint_parameters'
require_relative 'aws-sdk-marketplacediscovery/endpoint_provider'
require_relative 'aws-sdk-marketplacediscovery/waiters'
require_relative 'aws-sdk-marketplacediscovery/customizations'
