# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:elasticloadbalancing)

# This module provides support for Elastic Load Balancing. This module is available in the
# `aws-sdk-elasticloadbalancing` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     elastic_load_balancing = Aws::ElasticLoadBalancing::Client.new
#     resp = elastic_load_balancing.add_tags(params)
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
#     rescue Aws::ElasticLoadBalancing::Errors::ServiceError
#       # rescues all Elastic Load Balancing API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ElasticLoadBalancing
  autoload :Types, 'aws-sdk-elasticloadbalancing/types'
  autoload :ClientApi, 'aws-sdk-elasticloadbalancing/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-elasticloadbalancing/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-elasticloadbalancing/client'
  autoload :Errors, 'aws-sdk-elasticloadbalancing/errors'
  autoload :Waiters, 'aws-sdk-elasticloadbalancing/waiters'
  autoload :Resource, 'aws-sdk-elasticloadbalancing/resource'
  autoload :EndpointParameters, 'aws-sdk-elasticloadbalancing/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-elasticloadbalancing/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-elasticloadbalancing/endpoints'

  GEM_VERSION = '1.76.0'

end

require_relative 'aws-sdk-elasticloadbalancing/customizations'
