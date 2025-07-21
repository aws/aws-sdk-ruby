# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:pi)

# This module provides support for AWS Performance Insights. This module is available in the
# `aws-sdk-pi` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     pi = Aws::PI::Client.new
#     resp = pi.create_performance_analysis_report(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Performance Insights are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::PI::Errors::ServiceError
#       # rescues all AWS Performance Insights API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::PI
  autoload :Types, 'aws-sdk-pi/types'
  autoload :ClientApi, 'aws-sdk-pi/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-pi/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-pi/client'
  autoload :Errors, 'aws-sdk-pi/errors'
  autoload :Resource, 'aws-sdk-pi/resource'
  autoload :EndpointParameters, 'aws-sdk-pi/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-pi/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-pi/endpoints'

  GEM_VERSION = '1.81.0'

end

require_relative 'aws-sdk-pi/customizations'
