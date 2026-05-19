# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sustainability)

# This module provides support for AWS Sustainability. This module is available in the
# `aws-sdk-sustainability` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sustainability = Aws::Sustainability::Client.new
#     resp = sustainability.get_estimated_carbon_emissions(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Sustainability are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Sustainability::Errors::ServiceError
#       # rescues all AWS Sustainability API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Sustainability
  autoload :Types, 'aws-sdk-sustainability/types'
  autoload :ClientApi, 'aws-sdk-sustainability/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sustainability/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sustainability/client'
  autoload :Errors, 'aws-sdk-sustainability/errors'
  autoload :Resource, 'aws-sdk-sustainability/resource'
  autoload :EndpointParameters, 'aws-sdk-sustainability/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sustainability/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sustainability/endpoints'

  GEM_VERSION = '1.1.0'

end

require_relative 'aws-sdk-sustainability/customizations'
