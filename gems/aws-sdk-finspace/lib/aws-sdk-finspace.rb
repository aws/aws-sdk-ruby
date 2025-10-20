# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:finspace)

# This module provides support for FinSpace User Environment Management service. This module is available in the
# `aws-sdk-finspace` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     finspace = Aws::Finspace::Client.new
#     resp = finspace.create_environment(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from FinSpace User Environment Management service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Finspace::Errors::ServiceError
#       # rescues all FinSpace User Environment Management service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Finspace
  autoload :Types, 'aws-sdk-finspace/types'
  autoload :ClientApi, 'aws-sdk-finspace/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-finspace/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-finspace/client'
  autoload :Errors, 'aws-sdk-finspace/errors'
  autoload :Resource, 'aws-sdk-finspace/resource'
  autoload :EndpointParameters, 'aws-sdk-finspace/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-finspace/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-finspace/endpoints'

  GEM_VERSION = '1.59.0'

end

require_relative 'aws-sdk-finspace/customizations'
