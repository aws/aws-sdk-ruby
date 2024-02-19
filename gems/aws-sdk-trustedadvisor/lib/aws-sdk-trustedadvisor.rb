# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-trustedadvisor/types'
require_relative 'aws-sdk-trustedadvisor/client_api'
require_relative 'aws-sdk-trustedadvisor/plugins/endpoints.rb'
require_relative 'aws-sdk-trustedadvisor/client'
require_relative 'aws-sdk-trustedadvisor/errors'
require_relative 'aws-sdk-trustedadvisor/resource'
require_relative 'aws-sdk-trustedadvisor/endpoint_parameters'
require_relative 'aws-sdk-trustedadvisor/endpoint_provider'
require_relative 'aws-sdk-trustedadvisor/endpoints'
require_relative 'aws-sdk-trustedadvisor/customizations'

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
#     resp = trusted_advisor.get_organization_recommendation(params)
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

  GEM_VERSION = '1.3.0'

end
