# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:emrserverless)

# This module provides support for EMR Serverless. This module is available in the
# `aws-sdk-emrserverless` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     emr_serverless = Aws::EMRServerless::Client.new
#     resp = emr_serverless.cancel_job_run(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from EMR Serverless are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::EMRServerless::Errors::ServiceError
#       # rescues all EMR Serverless API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::EMRServerless
  autoload :Types, 'aws-sdk-emrserverless/types'
  autoload :ClientApi, 'aws-sdk-emrserverless/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-emrserverless/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-emrserverless/client'
  autoload :Errors, 'aws-sdk-emrserverless/errors'
  autoload :Resource, 'aws-sdk-emrserverless/resource'
  autoload :EndpointParameters, 'aws-sdk-emrserverless/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-emrserverless/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-emrserverless/endpoints'

  GEM_VERSION = '1.57.0'

end

require_relative 'aws-sdk-emrserverless/customizations'
