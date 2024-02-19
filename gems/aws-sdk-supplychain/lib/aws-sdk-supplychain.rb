# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-supplychain/types'
require_relative 'aws-sdk-supplychain/client_api'
require_relative 'aws-sdk-supplychain/plugins/endpoints.rb'
require_relative 'aws-sdk-supplychain/client'
require_relative 'aws-sdk-supplychain/errors'
require_relative 'aws-sdk-supplychain/resource'
require_relative 'aws-sdk-supplychain/endpoint_parameters'
require_relative 'aws-sdk-supplychain/endpoint_provider'
require_relative 'aws-sdk-supplychain/endpoints'
require_relative 'aws-sdk-supplychain/customizations'

# This module provides support for AWS Supply Chain. This module is available in the
# `aws-sdk-supplychain` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     supply_chain = Aws::SupplyChain::Client.new
#     resp = supply_chain.create_bill_of_materials_import_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Supply Chain are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SupplyChain::Errors::ServiceError
#       # rescues all AWS Supply Chain API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SupplyChain

  GEM_VERSION = '1.1.0'

end
