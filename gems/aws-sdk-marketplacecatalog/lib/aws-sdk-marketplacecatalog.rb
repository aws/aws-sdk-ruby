# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-marketplacecatalog/types'
require_relative 'aws-sdk-marketplacecatalog/client_api'
require_relative 'aws-sdk-marketplacecatalog/client'
require_relative 'aws-sdk-marketplacecatalog/errors'
require_relative 'aws-sdk-marketplacecatalog/resource'
require_relative 'aws-sdk-marketplacecatalog/customizations'

# This module provides support for AWS Marketplace Catalog Service. This module is available in the
# `aws-sdk-marketplacecatalog` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     marketplace_catalog = Aws::MarketplaceCatalog::Client.new
#     resp = marketplace_catalog.cancel_change_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Marketplace Catalog Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MarketplaceCatalog::Errors::ServiceError
#       # rescues all AWS Marketplace Catalog Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MarketplaceCatalog

  GEM_VERSION = '1.9.0'

end
