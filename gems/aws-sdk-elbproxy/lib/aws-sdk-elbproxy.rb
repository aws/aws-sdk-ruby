# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:elbproxy)

# This module provides support for Elastic Load Balancing for Envoy. This module is available in the
# `aws-sdk-elbproxy` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     elb_proxy = Aws::ELBProxy::Client.new
#     resp = elb_proxy.associate_certificate(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Elastic Load Balancing for Envoy are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ELBProxy::Errors::ServiceError
#       # rescues all Elastic Load Balancing for Envoy API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ELBProxy
  autoload :Types, 'aws-sdk-elbproxy/types'
  autoload :ClientApi, 'aws-sdk-elbproxy/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-elbproxy/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-elbproxy/client'
  autoload :Errors, 'aws-sdk-elbproxy/errors'
  autoload :Waiters, 'aws-sdk-elbproxy/waiters'
  autoload :Resource, 'aws-sdk-elbproxy/resource'
  autoload :EndpointParameters, 'aws-sdk-elbproxy/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-elbproxy/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-elbproxy/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-elbproxy/customizations'
