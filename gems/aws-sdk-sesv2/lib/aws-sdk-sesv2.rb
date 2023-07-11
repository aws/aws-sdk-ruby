# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-sesv2/types'
require_relative 'aws-sdk-sesv2/client_api'
require_relative 'aws-sdk-sesv2/plugins/endpoints.rb'
require_relative 'aws-sdk-sesv2/client'
require_relative 'aws-sdk-sesv2/errors'
require_relative 'aws-sdk-sesv2/resource'
require_relative 'aws-sdk-sesv2/endpoint_parameters'
require_relative 'aws-sdk-sesv2/endpoint_provider'
require_relative 'aws-sdk-sesv2/endpoints'
require_relative 'aws-sdk-sesv2/customizations'

# This module provides support for Amazon Simple Email Service. This module is available in the
# `aws-sdk-sesv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sesv2 = Aws::SESV2::Client.new
#     resp = sesv2.batch_get_metric_data(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Simple Email Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SESV2::Errors::ServiceError
#       # rescues all Amazon Simple Email Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SESV2

  GEM_VERSION = '1.38.0'

end
