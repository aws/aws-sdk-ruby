# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:emr)

# This module provides support for Amazon EMR. This module is available in the
# `aws-sdk-emr` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     emr = Aws::EMR::Client.new
#     resp = emr.add_instance_fleet(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon EMR are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EMR::Errors::ServiceError
#       # rescues all Amazon EMR API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EMR
  autoload :Types, 'aws-sdk-emr/types'
  autoload :ClientApi, 'aws-sdk-emr/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-emr/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-emr/client'
  autoload :Errors, 'aws-sdk-emr/errors'
  autoload :Waiters, 'aws-sdk-emr/waiters'
  autoload :Resource, 'aws-sdk-emr/resource'
  autoload :EndpointParameters, 'aws-sdk-emr/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-emr/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-emr/endpoints'

  GEM_VERSION = '1.122.0'

end

require_relative 'aws-sdk-emr/customizations'
