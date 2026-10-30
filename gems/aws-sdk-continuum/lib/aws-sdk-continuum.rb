# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:continuum)

# This module provides support for AWS Continuum. This module is available in the
# `aws-sdk-continuum` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     continuum = Aws::Continuum::Client.new
#     resp = continuum.associate_collector(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Continuum are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Continuum::Errors::ServiceError
#       # rescues all AWS Continuum API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Continuum
  autoload :Types, 'aws-sdk-continuum/types'
  autoload :ClientApi, 'aws-sdk-continuum/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-continuum/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-continuum/client'
  autoload :Errors, 'aws-sdk-continuum/errors'
  autoload :Waiters, 'aws-sdk-continuum/waiters'
  autoload :Resource, 'aws-sdk-continuum/resource'
  autoload :EndpointParameters, 'aws-sdk-continuum/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-continuum/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-continuum/endpoints'

  GEM_VERSION = '1.2.0'

end

require_relative 'aws-sdk-continuum/customizations'
