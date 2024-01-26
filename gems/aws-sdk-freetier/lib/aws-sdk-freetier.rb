# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-freetier/types'
require_relative 'aws-sdk-freetier/client_api'
require_relative 'aws-sdk-freetier/plugins/endpoints.rb'
require_relative 'aws-sdk-freetier/client'
require_relative 'aws-sdk-freetier/errors'
require_relative 'aws-sdk-freetier/resource'
require_relative 'aws-sdk-freetier/endpoint_parameters'
require_relative 'aws-sdk-freetier/endpoint_provider'
require_relative 'aws-sdk-freetier/endpoints'
require_relative 'aws-sdk-freetier/customizations'

# This module provides support for AWS Free Tier. This module is available in the
# `aws-sdk-freetier` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     free_tier = Aws::FreeTier::Client.new
#     resp = free_tier.get_free_tier_usage(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Free Tier are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::FreeTier::Errors::ServiceError
#       # rescues all AWS Free Tier API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::FreeTier

  GEM_VERSION = '1.2.0'

end
