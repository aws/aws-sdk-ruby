# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:mainframemodernization)

# This module provides support for AWSMainframeModernization. This module is available in the
# `aws-sdk-mainframemodernization` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     mainframe_modernization = Aws::MainframeModernization::Client.new
#     resp = mainframe_modernization.cancel_batch_job_execution(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWSMainframeModernization are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MainframeModernization::Errors::ServiceError
#       # rescues all AWSMainframeModernization API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MainframeModernization
  autoload :Types, 'aws-sdk-mainframemodernization/types'
  autoload :ClientApi, 'aws-sdk-mainframemodernization/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-mainframemodernization/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-mainframemodernization/client'
  autoload :Errors, 'aws-sdk-mainframemodernization/errors'
  autoload :Resource, 'aws-sdk-mainframemodernization/resource'
  autoload :EndpointParameters, 'aws-sdk-mainframemodernization/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-mainframemodernization/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-mainframemodernization/endpoints'

  GEM_VERSION = '1.45.0'

end

require_relative 'aws-sdk-mainframemodernization/customizations'
