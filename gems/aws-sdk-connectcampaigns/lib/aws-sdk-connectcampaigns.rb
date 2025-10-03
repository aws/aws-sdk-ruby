# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ConnectCampaigns', Module.new) unless Aws.const_defined?('ConnectCampaigns')

# @title AmazonConnectCampaignService
# Provide APIs to create and manage Amazon Connect Campaigns.
module Aws::ConnectCampaigns
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-connectcampaigns/types'
require_relative 'aws-sdk-connectcampaigns/paginators'
require_relative 'aws-sdk-connectcampaigns/schema'
require_relative 'aws-sdk-connectcampaigns/auth_parameters'
require_relative 'aws-sdk-connectcampaigns/auth_resolver'
require_relative 'aws-sdk-connectcampaigns/client'
require_relative 'aws-sdk-connectcampaigns/customizations'
require_relative 'aws-sdk-connectcampaigns/errors'
require_relative 'aws-sdk-connectcampaigns/endpoint_parameters'
require_relative 'aws-sdk-connectcampaigns/endpoint_provider'
require_relative 'aws-sdk-connectcampaigns/waiters'
