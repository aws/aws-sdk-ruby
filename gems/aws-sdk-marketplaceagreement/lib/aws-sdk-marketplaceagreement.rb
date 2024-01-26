# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-marketplaceagreement/types'
require_relative 'aws-sdk-marketplaceagreement/client_api'
require_relative 'aws-sdk-marketplaceagreement/plugins/endpoints.rb'
require_relative 'aws-sdk-marketplaceagreement/client'
require_relative 'aws-sdk-marketplaceagreement/errors'
require_relative 'aws-sdk-marketplaceagreement/resource'
require_relative 'aws-sdk-marketplaceagreement/endpoint_parameters'
require_relative 'aws-sdk-marketplaceagreement/endpoint_provider'
require_relative 'aws-sdk-marketplaceagreement/endpoints'
require_relative 'aws-sdk-marketplaceagreement/customizations'

# This module provides support for AWS Marketplace Agreement Service. This module is available in the
# `aws-sdk-marketplaceagreement` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     marketplace_agreement = Aws::MarketplaceAgreement::Client.new
#     resp = marketplace_agreement.describe_agreement(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Marketplace Agreement Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MarketplaceAgreement::Errors::ServiceError
#       # rescues all AWS Marketplace Agreement Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MarketplaceAgreement

  GEM_VERSION = '1.1.0'

end
