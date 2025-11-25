# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lakeformation)

# This module provides support for AWS Lake Formation. This module is available in the
# `aws-sdk-lakeformation` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lake_formation = Aws::LakeFormation::Client.new
#     resp = lake_formation.add_lf_tags_to_resource(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Lake Formation are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LakeFormation::Errors::ServiceError
#       # rescues all AWS Lake Formation API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LakeFormation
  autoload :Types, 'aws-sdk-lakeformation/types'
  autoload :ClientApi, 'aws-sdk-lakeformation/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lakeformation/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lakeformation/client'
  autoload :Errors, 'aws-sdk-lakeformation/errors'
  autoload :Resource, 'aws-sdk-lakeformation/resource'
  autoload :EndpointParameters, 'aws-sdk-lakeformation/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lakeformation/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lakeformation/endpoints'

  GEM_VERSION = '1.81.0'

end

require_relative 'aws-sdk-lakeformation/customizations'
