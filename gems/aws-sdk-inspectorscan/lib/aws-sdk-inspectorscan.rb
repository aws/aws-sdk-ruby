# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:inspectorscan)

# This module provides support for Inspector Scan. This module is available in the
# `aws-sdk-inspectorscan` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     inspector_scan = Aws::InspectorScan::Client.new
#     resp = inspector_scan.scan_sbom(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Inspector Scan are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::InspectorScan::Errors::ServiceError
#       # rescues all Inspector Scan API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::InspectorScan
  autoload :Types, 'aws-sdk-inspectorscan/types'
  autoload :ClientApi, 'aws-sdk-inspectorscan/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-inspectorscan/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-inspectorscan/client'
  autoload :Errors, 'aws-sdk-inspectorscan/errors'
  autoload :Resource, 'aws-sdk-inspectorscan/resource'
  autoload :EndpointParameters, 'aws-sdk-inspectorscan/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-inspectorscan/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-inspectorscan/endpoints'

  GEM_VERSION = '1.24.0'

end

require_relative 'aws-sdk-inspectorscan/customizations'
