# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:dataexchange)

# This module provides support for AWS Data Exchange. This module is available in the
# `aws-sdk-dataexchange` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     data_exchange = Aws::DataExchange::Client.new
#     resp = data_exchange.accept_data_grant(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Data Exchange are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DataExchange::Errors::ServiceError
#       # rescues all AWS Data Exchange API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DataExchange
  autoload :Types, 'aws-sdk-dataexchange/types'
  autoload :ClientApi, 'aws-sdk-dataexchange/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-dataexchange/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-dataexchange/client'
  autoload :Errors, 'aws-sdk-dataexchange/errors'
  autoload :Waiters, 'aws-sdk-dataexchange/waiters'
  autoload :Resource, 'aws-sdk-dataexchange/resource'
  autoload :EndpointParameters, 'aws-sdk-dataexchange/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-dataexchange/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-dataexchange/endpoints'

  GEM_VERSION = '1.76.0'

end

require_relative 'aws-sdk-dataexchange/customizations'
