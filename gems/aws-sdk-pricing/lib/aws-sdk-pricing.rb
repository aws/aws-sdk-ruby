# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-pricing/types'
require_relative 'aws-sdk-pricing/client_api'
require_relative 'aws-sdk-pricing/client'
require_relative 'aws-sdk-pricing/errors'
require_relative 'aws-sdk-pricing/resource'
require_relative 'aws-sdk-pricing/customizations'

# This module provides support for AWS Price List Service. This module is available in the
# `aws-sdk-pricing` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pricing = Aws::Pricing::Client.new
#     resp = pricing.describe_services(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Price List Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Pricing::Errors::ServiceError
#       # rescues all AWS Price List Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Pricing

  GEM_VERSION = '1.24.0'

end
