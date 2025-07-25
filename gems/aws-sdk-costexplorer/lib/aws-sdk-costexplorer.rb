# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:costexplorer)

# This module provides support for AWS Cost Explorer Service. This module is available in the
# `aws-sdk-costexplorer` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cost_explorer = Aws::CostExplorer::Client.new
#     resp = cost_explorer.create_anomaly_monitor(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Cost Explorer Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CostExplorer::Errors::ServiceError
#       # rescues all AWS Cost Explorer Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CostExplorer
  autoload :Types, 'aws-sdk-costexplorer/types'
  autoload :ClientApi, 'aws-sdk-costexplorer/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-costexplorer/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-costexplorer/client'
  autoload :Errors, 'aws-sdk-costexplorer/errors'
  autoload :Resource, 'aws-sdk-costexplorer/resource'
  autoload :EndpointParameters, 'aws-sdk-costexplorer/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-costexplorer/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-costexplorer/endpoints'

  GEM_VERSION = '1.129.0'

end

require_relative 'aws-sdk-costexplorer/customizations'
