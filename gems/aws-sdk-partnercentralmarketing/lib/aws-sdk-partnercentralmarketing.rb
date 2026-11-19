# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:partnercentralmarketing)

# This module provides support for Partner Central Marketing API. This module is available in the
# `aws-sdk-partnercentralmarketing` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     partner_central_marketing = Aws::PartnerCentralMarketing::Client.new
#     resp = partner_central_marketing.batch_create_campaign_asset(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Partner Central Marketing API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PartnerCentralMarketing::Errors::ServiceError
#       # rescues all Partner Central Marketing API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PartnerCentralMarketing
  autoload :Types, 'aws-sdk-partnercentralmarketing/types'
  autoload :ClientApi, 'aws-sdk-partnercentralmarketing/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-partnercentralmarketing/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-partnercentralmarketing/client'
  autoload :Errors, 'aws-sdk-partnercentralmarketing/errors'
  autoload :Resource, 'aws-sdk-partnercentralmarketing/resource'
  autoload :EndpointParameters, 'aws-sdk-partnercentralmarketing/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-partnercentralmarketing/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-partnercentralmarketing/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-partnercentralmarketing/customizations'
