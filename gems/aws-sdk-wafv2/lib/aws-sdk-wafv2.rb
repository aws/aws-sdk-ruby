# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:wafv2)

# This module provides support for AWS WAFV2. This module is available in the
# `aws-sdk-wafv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     wafv2 = Aws::WAFV2::Client.new
#     resp = wafv2.associate_web_acl(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS WAFV2 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WAFV2::Errors::ServiceError
#       # rescues all AWS WAFV2 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WAFV2
  autoload :Types, 'aws-sdk-wafv2/types'
  autoload :ClientApi, 'aws-sdk-wafv2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-wafv2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-wafv2/client'
  autoload :Errors, 'aws-sdk-wafv2/errors'
  autoload :Resource, 'aws-sdk-wafv2/resource'
  autoload :EndpointParameters, 'aws-sdk-wafv2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-wafv2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-wafv2/endpoints'

  GEM_VERSION = '1.115.0'

end

require_relative 'aws-sdk-wafv2/customizations'
