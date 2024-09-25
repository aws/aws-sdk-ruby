# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:drs)

# This module provides support for Elastic Disaster Recovery Service. This module is available in the
# `aws-sdk-drs` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     drs = Aws::Drs::Client.new
#     resp = drs.associate_source_network_stack(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Elastic Disaster Recovery Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Drs::Errors::ServiceError
#       # rescues all Elastic Disaster Recovery Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Drs
  autoload :Types, 'aws-sdk-drs/types'
  autoload :ClientApi, 'aws-sdk-drs/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-drs/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-drs/client'
  autoload :Errors, 'aws-sdk-drs/errors'
  autoload :Resource, 'aws-sdk-drs/resource'
  autoload :EndpointParameters, 'aws-sdk-drs/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-drs/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-drs/endpoints'

  GEM_VERSION = '1.42.0'

end

require_relative 'aws-sdk-drs/customizations'
