# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:wafregional)

# This module provides support for AWS WAF Regional. This module is available in the
# `aws-sdk-wafregional` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     waf_regional = Aws::WAFRegional::Client.new
#     resp = waf_regional.associate_web_acl(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS WAF Regional are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::WAFRegional::Errors::ServiceError
#       # rescues all AWS WAF Regional API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::WAFRegional
  autoload :Types, 'aws-sdk-wafregional/types'
  autoload :ClientApi, 'aws-sdk-wafregional/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-wafregional/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-wafregional/client'
  autoload :Errors, 'aws-sdk-wafregional/errors'
  autoload :Resource, 'aws-sdk-wafregional/resource'
  autoload :EndpointParameters, 'aws-sdk-wafregional/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-wafregional/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-wafregional/endpoints'

  GEM_VERSION = '1.83.0'

end

require_relative 'aws-sdk-wafregional/customizations'
