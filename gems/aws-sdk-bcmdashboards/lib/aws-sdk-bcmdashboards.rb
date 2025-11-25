# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:bcmdashboards)

# This module provides support for AWS Billing and Cost Management Dashboards. This module is available in the
# `aws-sdk-bcmdashboards` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     bcm_dashboards = Aws::BCMDashboards::Client.new
#     resp = bcm_dashboards.create_dashboard(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Billing and Cost Management Dashboards are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BCMDashboards::Errors::ServiceError
#       # rescues all AWS Billing and Cost Management Dashboards API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BCMDashboards
  autoload :Types, 'aws-sdk-bcmdashboards/types'
  autoload :ClientApi, 'aws-sdk-bcmdashboards/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-bcmdashboards/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-bcmdashboards/client'
  autoload :Errors, 'aws-sdk-bcmdashboards/errors'
  autoload :Waiters, 'aws-sdk-bcmdashboards/waiters'
  autoload :Resource, 'aws-sdk-bcmdashboards/resource'
  autoload :EndpointParameters, 'aws-sdk-bcmdashboards/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-bcmdashboards/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-bcmdashboards/endpoints'

  GEM_VERSION = '1.4.0'

end

require_relative 'aws-sdk-bcmdashboards/customizations'
