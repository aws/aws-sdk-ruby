# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:ssmsap)

# This module provides support for AWS Systems Manager for SAP. This module is available in the
# `aws-sdk-ssmsap` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     ssm_sap = Aws::SsmSap::Client.new
#     resp = ssm_sap.delete_resource_permission(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Systems Manager for SAP are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SsmSap::Errors::ServiceError
#       # rescues all AWS Systems Manager for SAP API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SsmSap
  autoload :Types, 'aws-sdk-ssmsap/types'
  autoload :ClientApi, 'aws-sdk-ssmsap/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-ssmsap/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-ssmsap/client'
  autoload :Errors, 'aws-sdk-ssmsap/errors'
  autoload :Resource, 'aws-sdk-ssmsap/resource'
  autoload :EndpointParameters, 'aws-sdk-ssmsap/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-ssmsap/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-ssmsap/endpoints'

  GEM_VERSION = '1.39.0'

end

require_relative 'aws-sdk-ssmsap/customizations'
