# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:elasticloadbalancingv2)

# This module provides support for Elastic Load Balancing. This module is available in the
# `aws-sdk-elasticloadbalancingv2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     elastic_load_balancing_v2 = Aws::ElasticLoadBalancingV2::Client.new
#     resp = elastic_load_balancing_v2.add_listener_certificates(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Elastic Load Balancing are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ElasticLoadBalancingV2::Errors::ServiceError
#       # rescues all Elastic Load Balancing API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ElasticLoadBalancingV2
  autoload :Types, 'aws-sdk-elasticloadbalancingv2/types'
  autoload :ClientApi, 'aws-sdk-elasticloadbalancingv2/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-elasticloadbalancingv2/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-elasticloadbalancingv2/client'
  autoload :Errors, 'aws-sdk-elasticloadbalancingv2/errors'
  autoload :Waiters, 'aws-sdk-elasticloadbalancingv2/waiters'
  autoload :Resource, 'aws-sdk-elasticloadbalancingv2/resource'
  autoload :EndpointParameters, 'aws-sdk-elasticloadbalancingv2/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-elasticloadbalancingv2/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-elasticloadbalancingv2/endpoints'

  GEM_VERSION = '1.140.0'

end

require_relative 'aws-sdk-elasticloadbalancingv2/customizations'
