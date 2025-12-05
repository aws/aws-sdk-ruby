# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:partnercentralbenefits)

# This module provides support for Partner Central Benefits API. This module is available in the
# `aws-sdk-partnercentralbenefits` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     partner_central_benefits = Aws::PartnerCentralBenefits::Client.new
#     resp = partner_central_benefits.amend_benefit_application(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Partner Central Benefits API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PartnerCentralBenefits::Errors::ServiceError
#       # rescues all Partner Central Benefits API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PartnerCentralBenefits
  autoload :Types, 'aws-sdk-partnercentralbenefits/types'
  autoload :ClientApi, 'aws-sdk-partnercentralbenefits/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-partnercentralbenefits/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-partnercentralbenefits/client'
  autoload :Errors, 'aws-sdk-partnercentralbenefits/errors'
  autoload :Waiters, 'aws-sdk-partnercentralbenefits/waiters'
  autoload :Resource, 'aws-sdk-partnercentralbenefits/resource'
  autoload :EndpointParameters, 'aws-sdk-partnercentralbenefits/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-partnercentralbenefits/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-partnercentralbenefits/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-partnercentralbenefits/customizations'
