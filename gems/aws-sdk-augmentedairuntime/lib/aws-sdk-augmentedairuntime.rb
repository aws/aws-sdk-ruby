# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:augmentedairuntime)

# This module provides support for Amazon Augmented AI Runtime. This module is available in the
# `aws-sdk-augmentedairuntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     augmented_ai_runtime = Aws::AugmentedAIRuntime::Client.new
#     resp = augmented_ai_runtime.delete_human_loop(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Augmented AI Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AugmentedAIRuntime::Errors::ServiceError
#       # rescues all Amazon Augmented AI Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AugmentedAIRuntime
  autoload :Types, 'aws-sdk-augmentedairuntime/types'
  autoload :ClientApi, 'aws-sdk-augmentedairuntime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-augmentedairuntime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-augmentedairuntime/client'
  autoload :Errors, 'aws-sdk-augmentedairuntime/errors'
  autoload :Resource, 'aws-sdk-augmentedairuntime/resource'
  autoload :EndpointParameters, 'aws-sdk-augmentedairuntime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-augmentedairuntime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-augmentedairuntime/endpoints'

  GEM_VERSION = '1.57.0'

end

require_relative 'aws-sdk-augmentedairuntime/customizations'
