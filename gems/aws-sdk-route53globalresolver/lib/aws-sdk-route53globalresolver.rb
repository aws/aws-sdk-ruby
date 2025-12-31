# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:route53globalresolver)

# This module provides support for Amazon Route 53 Global Resolver. This module is available in the
# `aws-sdk-route53globalresolver` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     route_53_global_resolver = Aws::Route53GlobalResolver::Client.new
#     resp = route_53_global_resolver.associate_hosted_zone(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Route 53 Global Resolver are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Route53GlobalResolver::Errors::ServiceError
#       # rescues all Amazon Route 53 Global Resolver API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Route53GlobalResolver
  autoload :Types, 'aws-sdk-route53globalresolver/types'
  autoload :ClientApi, 'aws-sdk-route53globalresolver/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-route53globalresolver/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-route53globalresolver/client'
  autoload :Errors, 'aws-sdk-route53globalresolver/errors'
  autoload :Waiters, 'aws-sdk-route53globalresolver/waiters'
  autoload :Resource, 'aws-sdk-route53globalresolver/resource'
  autoload :EndpointParameters, 'aws-sdk-route53globalresolver/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-route53globalresolver/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-route53globalresolver/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-route53globalresolver/customizations'
