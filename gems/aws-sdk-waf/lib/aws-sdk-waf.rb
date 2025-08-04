# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:waf)

# This module provides support for AWS WAF. This module is available in the
# `aws-sdk-waf` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     waf = Aws::WAF::Client.new
#     resp = waf.create_byte_match_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS WAF are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WAF::Errors::ServiceError
#       # rescues all AWS WAF API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WAF
  autoload :Types, 'aws-sdk-waf/types'
  autoload :ClientApi, 'aws-sdk-waf/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-waf/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-waf/client'
  autoload :Errors, 'aws-sdk-waf/errors'
  autoload :Resource, 'aws-sdk-waf/resource'
  autoload :EndpointParameters, 'aws-sdk-waf/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-waf/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-waf/endpoints'

  GEM_VERSION = '1.82.0'

end

require_relative 'aws-sdk-waf/customizations'
