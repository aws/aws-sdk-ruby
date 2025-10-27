# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:qbusiness)

# This module provides support for QBusiness. This module is available in the
# `aws-sdk-qbusiness` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     q_business = Aws::QBusiness::Client.new
#     resp = q_business.associate_permission(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from QBusiness are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::QBusiness::Errors::ServiceError
#       # rescues all QBusiness API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::QBusiness
  autoload :Types, 'aws-sdk-qbusiness/types'
  autoload :ClientApi, 'aws-sdk-qbusiness/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-qbusiness/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-qbusiness/client'
  autoload :Errors, 'aws-sdk-qbusiness/errors'
  autoload :Waiters, 'aws-sdk-qbusiness/waiters'
  autoload :Resource, 'aws-sdk-qbusiness/resource'
  autoload :EndpointParameters, 'aws-sdk-qbusiness/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-qbusiness/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-qbusiness/endpoints'
  autoload :AsyncClient, 'aws-sdk-qbusiness/async_client'
  autoload :EventStreams, 'aws-sdk-qbusiness/event_streams'

  GEM_VERSION = '1.50.0'

end

require_relative 'aws-sdk-qbusiness/customizations'
