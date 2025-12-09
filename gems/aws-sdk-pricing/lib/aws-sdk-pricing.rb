# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:pricing)

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
  autoload :Types, 'aws-sdk-pricing/types'
  autoload :ClientApi, 'aws-sdk-pricing/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-pricing/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-pricing/client'
  autoload :Errors, 'aws-sdk-pricing/errors'
  autoload :Waiters, 'aws-sdk-pricing/waiters'
  autoload :Resource, 'aws-sdk-pricing/resource'
  autoload :EndpointParameters, 'aws-sdk-pricing/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-pricing/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-pricing/endpoints'

  GEM_VERSION = '1.86.0'

end

require_relative 'aws-sdk-pricing/customizations'
