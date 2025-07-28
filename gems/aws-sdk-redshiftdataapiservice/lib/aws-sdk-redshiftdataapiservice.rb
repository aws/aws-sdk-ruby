# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:redshiftdataapiservice)

# This module provides support for Redshift Data API Service. This module is available in the
# `aws-sdk-redshiftdataapiservice` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     redshift_data_api_service = Aws::RedshiftDataAPIService::Client.new
#     resp = redshift_data_api_service.batch_execute_statement(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Redshift Data API Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RedshiftDataAPIService::Errors::ServiceError
#       # rescues all Redshift Data API Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RedshiftDataAPIService
  autoload :Types, 'aws-sdk-redshiftdataapiservice/types'
  autoload :ClientApi, 'aws-sdk-redshiftdataapiservice/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-redshiftdataapiservice/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-redshiftdataapiservice/client'
  autoload :Errors, 'aws-sdk-redshiftdataapiservice/errors'
  autoload :Resource, 'aws-sdk-redshiftdataapiservice/resource'
  autoload :EndpointParameters, 'aws-sdk-redshiftdataapiservice/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-redshiftdataapiservice/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-redshiftdataapiservice/endpoints'

  GEM_VERSION = '1.58.0'

end

require_relative 'aws-sdk-redshiftdataapiservice/customizations'
