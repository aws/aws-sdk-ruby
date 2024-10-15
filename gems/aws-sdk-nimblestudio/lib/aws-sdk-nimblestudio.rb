# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:nimblestudio)

# This module provides support for AmazonNimbleStudio. This module is available in the
# `aws-sdk-nimblestudio` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     nimble_studio = Aws::NimbleStudio::Client.new
#     resp = nimble_studio.accept_eulas(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AmazonNimbleStudio are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::NimbleStudio::Errors::ServiceError
#       # rescues all AmazonNimbleStudio API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::NimbleStudio
  autoload :Types, 'aws-sdk-nimblestudio/types'
  autoload :ClientApi, 'aws-sdk-nimblestudio/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-nimblestudio/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-nimblestudio/client'
  autoload :Errors, 'aws-sdk-nimblestudio/errors'
  autoload :Waiters, 'aws-sdk-nimblestudio/waiters'
  autoload :Resource, 'aws-sdk-nimblestudio/resource'
  autoload :EndpointParameters, 'aws-sdk-nimblestudio/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-nimblestudio/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-nimblestudio/endpoints'

  GEM_VERSION = '1.41.0'

end

require_relative 'aws-sdk-nimblestudio/customizations'
