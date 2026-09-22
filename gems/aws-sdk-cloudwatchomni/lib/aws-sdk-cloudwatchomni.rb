# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatchomni)

# This module provides support for CloudWatch Omni. This module is available in the
# `aws-sdk-cloudwatchomni` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_watch_omni = Aws::CloudWatchOmni::Client.new
#     resp = cloud_watch_omni.create_access_grant(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from CloudWatch Omni are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudWatchOmni::Errors::ServiceError
#       # rescues all CloudWatch Omni API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudWatchOmni
  autoload :Types, 'aws-sdk-cloudwatchomni/types'
  autoload :ClientApi, 'aws-sdk-cloudwatchomni/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudwatchomni/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudwatchomni/client'
  autoload :Errors, 'aws-sdk-cloudwatchomni/errors'
  autoload :Resource, 'aws-sdk-cloudwatchomni/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudwatchomni/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudwatchomni/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudwatchomni/endpoints'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-cloudwatchomni/customizations'
