# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:servicediscovery)

# This module provides support for AWS Cloud Map. This module is available in the
# `aws-sdk-servicediscovery` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     service_discovery = Aws::ServiceDiscovery::Client.new
#     resp = service_discovery.create_http_namespace(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Cloud Map are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ServiceDiscovery::Errors::ServiceError
#       # rescues all AWS Cloud Map API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ServiceDiscovery
  autoload :Types, 'aws-sdk-servicediscovery/types'
  autoload :ClientApi, 'aws-sdk-servicediscovery/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-servicediscovery/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-servicediscovery/client'
  autoload :Errors, 'aws-sdk-servicediscovery/errors'
  autoload :Resource, 'aws-sdk-servicediscovery/resource'
  autoload :EndpointParameters, 'aws-sdk-servicediscovery/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-servicediscovery/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-servicediscovery/endpoints'

  GEM_VERSION = '1.94.0'

end

require_relative 'aws-sdk-servicediscovery/customizations'
