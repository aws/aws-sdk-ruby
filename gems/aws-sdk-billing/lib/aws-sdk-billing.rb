# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:billing)

# This module provides support for AWS Billing. This module is available in the
# `aws-sdk-billing` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     billing = Aws::Billing::Client.new
#     resp = billing.associate_source_views(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Billing are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Billing::Errors::ServiceError
#       # rescues all AWS Billing API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Billing
  autoload :Types, 'aws-sdk-billing/types'
  autoload :ClientApi, 'aws-sdk-billing/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-billing/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-billing/client'
  autoload :Errors, 'aws-sdk-billing/errors'
  autoload :Waiters, 'aws-sdk-billing/waiters'
  autoload :Resource, 'aws-sdk-billing/resource'
  autoload :EndpointParameters, 'aws-sdk-billing/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-billing/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-billing/endpoints'

  GEM_VERSION = '1.18.0'

end

require_relative 'aws-sdk-billing/customizations'
