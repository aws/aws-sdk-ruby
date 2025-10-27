# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:codeguruprofiler)

# This module provides support for Amazon CodeGuru Profiler. This module is available in the
# `aws-sdk-codeguruprofiler` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     code_guru_profiler = Aws::CodeGuruProfiler::Client.new
#     resp = code_guru_profiler.add_notification_channels(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CodeGuru Profiler are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CodeGuruProfiler::Errors::ServiceError
#       # rescues all Amazon CodeGuru Profiler API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CodeGuruProfiler
  autoload :Types, 'aws-sdk-codeguruprofiler/types'
  autoload :ClientApi, 'aws-sdk-codeguruprofiler/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-codeguruprofiler/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-codeguruprofiler/client'
  autoload :Errors, 'aws-sdk-codeguruprofiler/errors'
  autoload :Resource, 'aws-sdk-codeguruprofiler/resource'
  autoload :EndpointParameters, 'aws-sdk-codeguruprofiler/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-codeguruprofiler/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-codeguruprofiler/endpoints'

  GEM_VERSION = '1.61.0'

end

require_relative 'aws-sdk-codeguruprofiler/customizations'
