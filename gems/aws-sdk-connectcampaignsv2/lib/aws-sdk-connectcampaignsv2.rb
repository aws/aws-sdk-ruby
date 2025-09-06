# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ConnectCampaignsV2', Module.new) unless Aws.const_defined?('ConnectCampaignsV2')

# @title AmazonConnectCampaignServiceV2
# Provide APIs to create and manage Amazon Connect Campaigns.
module Aws::ConnectCampaignsV2
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-connectcampaignsv2/types'
require_relative 'aws-sdk-connectcampaignsv2/paginators'
require_relative 'aws-sdk-connectcampaignsv2/schema'
require_relative 'aws-sdk-connectcampaignsv2/auth_parameters'
require_relative 'aws-sdk-connectcampaignsv2/auth_resolver'
require_relative 'aws-sdk-connectcampaignsv2/client'
require_relative 'aws-sdk-connectcampaignsv2/customizations'
require_relative 'aws-sdk-connectcampaignsv2/errors'
require_relative 'aws-sdk-connectcampaignsv2/endpoint_parameters'
require_relative 'aws-sdk-connectcampaignsv2/endpoint_provider'
require_relative 'aws-sdk-connectcampaignsv2/waiters'
