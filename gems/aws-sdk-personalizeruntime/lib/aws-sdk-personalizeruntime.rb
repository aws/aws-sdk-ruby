# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:personalizeruntime)

# This module provides support for Amazon Personalize Runtime. This module is available in the
# `aws-sdk-personalizeruntime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     personalize_runtime = Aws::PersonalizeRuntime::Client.new
#     resp = personalize_runtime.get_action_recommendations(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Personalize Runtime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PersonalizeRuntime::Errors::ServiceError
#       # rescues all Amazon Personalize Runtime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PersonalizeRuntime
  autoload :Types, 'aws-sdk-personalizeruntime/types'
  autoload :ClientApi, 'aws-sdk-personalizeruntime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-personalizeruntime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-personalizeruntime/client'
  autoload :Errors, 'aws-sdk-personalizeruntime/errors'
  autoload :Resource, 'aws-sdk-personalizeruntime/resource'
  autoload :EndpointParameters, 'aws-sdk-personalizeruntime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-personalizeruntime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-personalizeruntime/endpoints'

  GEM_VERSION = '1.76.0'

end

require_relative 'aws-sdk-personalizeruntime/customizations'
