# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:connectcampaignsv2)

# This module provides support for AmazonConnectCampaignServiceV2. This module is available in the
# `aws-sdk-connectcampaignsv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     connect_campaigns_v2 = Aws::ConnectCampaignsV2::Client.new
#     resp = connect_campaigns_v2.create_campaign(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AmazonConnectCampaignServiceV2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ConnectCampaignsV2::Errors::ServiceError
#       # rescues all AmazonConnectCampaignServiceV2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ConnectCampaignsV2
  autoload :Types, 'aws-sdk-connectcampaignsv2/types'
  autoload :ClientApi, 'aws-sdk-connectcampaignsv2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-connectcampaignsv2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-connectcampaignsv2/client'
  autoload :Errors, 'aws-sdk-connectcampaignsv2/errors'
  autoload :Resource, 'aws-sdk-connectcampaignsv2/resource'
  autoload :EndpointParameters, 'aws-sdk-connectcampaignsv2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-connectcampaignsv2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-connectcampaignsv2/endpoints'

  GEM_VERSION = '1.15.0'

end

require_relative 'aws-sdk-connectcampaignsv2/customizations'
