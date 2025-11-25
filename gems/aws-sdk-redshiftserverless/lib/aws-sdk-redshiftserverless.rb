# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:redshiftserverless)

# This module provides support for Redshift Serverless. This module is available in the
# `aws-sdk-redshiftserverless` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     redshift_serverless = Aws::RedshiftServerless::Client.new
#     resp = redshift_serverless.convert_recovery_point_to_snapshot(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Redshift Serverless are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RedshiftServerless::Errors::ServiceError
#       # rescues all Redshift Serverless API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RedshiftServerless
  autoload :Types, 'aws-sdk-redshiftserverless/types'
  autoload :ClientApi, 'aws-sdk-redshiftserverless/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-redshiftserverless/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-redshiftserverless/client'
  autoload :Errors, 'aws-sdk-redshiftserverless/errors'
  autoload :Resource, 'aws-sdk-redshiftserverless/resource'
  autoload :EndpointParameters, 'aws-sdk-redshiftserverless/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-redshiftserverless/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-redshiftserverless/endpoints'

  GEM_VERSION = '1.59.0'

end

require_relative 'aws-sdk-redshiftserverless/customizations'
