# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bcmdataexports)

# This module provides support for AWS Billing and Cost Management Data Exports. This module is available in the
# `aws-sdk-bcmdataexports` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bcm_data_exports = Aws::BCMDataExports::Client.new
#     resp = bcm_data_exports.create_export(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Billing and Cost Management Data Exports are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BCMDataExports::Errors::ServiceError
#       # rescues all AWS Billing and Cost Management Data Exports API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BCMDataExports
  autoload :Types, 'aws-sdk-bcmdataexports/types'
  autoload :ClientApi, 'aws-sdk-bcmdataexports/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bcmdataexports/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bcmdataexports/client'
  autoload :Errors, 'aws-sdk-bcmdataexports/errors'
  autoload :Resource, 'aws-sdk-bcmdataexports/resource'
  autoload :EndpointParameters, 'aws-sdk-bcmdataexports/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bcmdataexports/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bcmdataexports/endpoints'

  GEM_VERSION = '1.23.0'

end

require_relative 'aws-sdk-bcmdataexports/customizations'
