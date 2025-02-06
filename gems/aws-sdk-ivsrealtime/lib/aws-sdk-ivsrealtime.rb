# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ivsrealtime)

# This module provides support for Amazon Interactive Video Service RealTime. This module is available in the
# `aws-sdk-ivsrealtime` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ivs_real_time = Aws::IVSRealTime::Client.new
#     resp = ivs_real_time.create_encoder_configuration(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Interactive Video Service RealTime are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IVSRealTime::Errors::ServiceError
#       # rescues all Amazon Interactive Video Service RealTime API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::IVSRealTime
  autoload :Types, 'aws-sdk-ivsrealtime/types'
  autoload :ClientApi, 'aws-sdk-ivsrealtime/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ivsrealtime/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ivsrealtime/client'
  autoload :Errors, 'aws-sdk-ivsrealtime/errors'
  autoload :Waiters, 'aws-sdk-ivsrealtime/waiters'
  autoload :Resource, 'aws-sdk-ivsrealtime/resource'
  autoload :EndpointParameters, 'aws-sdk-ivsrealtime/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ivsrealtime/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ivsrealtime/endpoints'

  GEM_VERSION = '1.37.0'

end

require_relative 'aws-sdk-ivsrealtime/customizations'
