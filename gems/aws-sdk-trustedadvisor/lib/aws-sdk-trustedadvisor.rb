# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:trustedadvisor)

# This module provides support for TrustedAdvisor Public API. This module is available in the
# `aws-sdk-trustedadvisor` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     trusted_advisor = Aws::TrustedAdvisor::Client.new
#     resp = trusted_advisor.batch_update_recommendation_resource_exclusion(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from TrustedAdvisor Public API are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::TrustedAdvisor::Errors::ServiceError
#       # rescues all TrustedAdvisor Public API API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::TrustedAdvisor
  autoload :Types, 'aws-sdk-trustedadvisor/types'
  autoload :ClientApi, 'aws-sdk-trustedadvisor/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-trustedadvisor/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-trustedadvisor/client'
  autoload :Errors, 'aws-sdk-trustedadvisor/errors'
  autoload :Resource, 'aws-sdk-trustedadvisor/resource'
  autoload :EndpointParameters, 'aws-sdk-trustedadvisor/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-trustedadvisor/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-trustedadvisor/endpoints'

  GEM_VERSION = '1.19.0'

end

require_relative 'aws-sdk-trustedadvisor/customizations'
