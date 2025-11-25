# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:route53resolver)

# This module provides support for Amazon Route 53 Resolver. This module is available in the
# `aws-sdk-route53resolver` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     route_53_resolver = Aws::Route53Resolver::Client.new
#     resp = route_53_resolver.associate_firewall_rule_group(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Route 53 Resolver are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Route53Resolver::Errors::ServiceError
#       # rescues all Amazon Route 53 Resolver API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Route53Resolver
  autoload :Types, 'aws-sdk-route53resolver/types'
  autoload :ClientApi, 'aws-sdk-route53resolver/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-route53resolver/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-route53resolver/client'
  autoload :Errors, 'aws-sdk-route53resolver/errors'
  autoload :Resource, 'aws-sdk-route53resolver/resource'
  autoload :EndpointParameters, 'aws-sdk-route53resolver/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-route53resolver/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-route53resolver/endpoints'

  GEM_VERSION = '1.90.0'

end

require_relative 'aws-sdk-route53resolver/customizations'
