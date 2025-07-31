# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:resiliencehub)

# This module provides support for AWS Resilience Hub. This module is available in the
# `aws-sdk-resiliencehub` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     resilience_hub = Aws::ResilienceHub::Client.new
#     resp = resilience_hub.accept_resource_grouping_recommendations(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Resilience Hub are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ResilienceHub::Errors::ServiceError
#       # rescues all AWS Resilience Hub API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ResilienceHub
  autoload :Types, 'aws-sdk-resiliencehub/types'
  autoload :ClientApi, 'aws-sdk-resiliencehub/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-resiliencehub/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-resiliencehub/client'
  autoload :Errors, 'aws-sdk-resiliencehub/errors'
  autoload :Resource, 'aws-sdk-resiliencehub/resource'
  autoload :EndpointParameters, 'aws-sdk-resiliencehub/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-resiliencehub/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-resiliencehub/endpoints'

  GEM_VERSION = '1.53.0'

end

require_relative 'aws-sdk-resiliencehub/customizations'
