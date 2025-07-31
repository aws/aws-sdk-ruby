# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:route53domains)

# This module provides support for Amazon Route 53 Domains. This module is available in the
# `aws-sdk-route53domains` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     route_53_domains = Aws::Route53Domains::Client.new
#     resp = route_53_domains.accept_domain_transfer_from_another_aws_account(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Route 53 Domains are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Route53Domains::Errors::ServiceError
#       # rescues all Amazon Route 53 Domains API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Route53Domains
  autoload :Types, 'aws-sdk-route53domains/types'
  autoload :ClientApi, 'aws-sdk-route53domains/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-route53domains/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-route53domains/client'
  autoload :Errors, 'aws-sdk-route53domains/errors'
  autoload :Resource, 'aws-sdk-route53domains/resource'
  autoload :EndpointParameters, 'aws-sdk-route53domains/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-route53domains/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-route53domains/endpoints'

  GEM_VERSION = '1.81.0'

end

require_relative 'aws-sdk-route53domains/customizations'
