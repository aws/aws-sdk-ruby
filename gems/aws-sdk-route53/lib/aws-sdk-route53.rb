# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:route53)

# This module provides support for Amazon Route 53. This module is available in the
# `aws-sdk-route53` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     route_53 = Aws::Route53::Client.new
#     resp = route_53.activate_key_signing_key(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Route 53 are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Route53::Errors::ServiceError
#       # rescues all Amazon Route 53 API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Route53
  autoload :Types, 'aws-sdk-route53/types'
  autoload :ClientApi, 'aws-sdk-route53/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-route53/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-route53/client'
  autoload :Errors, 'aws-sdk-route53/errors'
  autoload :Waiters, 'aws-sdk-route53/waiters'
  autoload :Resource, 'aws-sdk-route53/resource'
  autoload :EndpointParameters, 'aws-sdk-route53/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-route53/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-route53/endpoints'

  GEM_VERSION = '1.119.0'

end

require_relative 'aws-sdk-route53/customizations'
