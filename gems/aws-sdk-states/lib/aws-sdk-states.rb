# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:states)

# This module provides support for AWS Step Functions. This module is available in the
# `aws-sdk-states` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     states = Aws::States::Client.new
#     resp = states.create_activity(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Step Functions are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::States::Errors::ServiceError
#       # rescues all AWS Step Functions API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::States
  autoload :Types, 'aws-sdk-states/types'
  autoload :ClientApi, 'aws-sdk-states/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-states/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-states/client'
  autoload :Errors, 'aws-sdk-states/errors'
  autoload :Resource, 'aws-sdk-states/resource'
  autoload :EndpointParameters, 'aws-sdk-states/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-states/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-states/endpoints'

  GEM_VERSION = '1.101.0'

end

require_relative 'aws-sdk-states/customizations'
