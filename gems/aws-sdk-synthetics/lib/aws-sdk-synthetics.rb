# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:synthetics)

# This module provides support for Synthetics. This module is available in the
# `aws-sdk-synthetics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     synthetics = Aws::Synthetics::Client.new
#     resp = synthetics.associate_resource(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Synthetics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Synthetics::Errors::ServiceError
#       # rescues all Synthetics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Synthetics
  autoload :Types, 'aws-sdk-synthetics/types'
  autoload :ClientApi, 'aws-sdk-synthetics/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-synthetics/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-synthetics/client'
  autoload :Errors, 'aws-sdk-synthetics/errors'
  autoload :Resource, 'aws-sdk-synthetics/resource'
  autoload :EndpointParameters, 'aws-sdk-synthetics/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-synthetics/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-synthetics/endpoints'

  GEM_VERSION = '1.77.0'

end

require_relative 'aws-sdk-synthetics/customizations'
